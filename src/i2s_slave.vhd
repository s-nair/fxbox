--
-- Stereo I2S Slave Driver --
-- Sharath Nair
--
-- PCM_RES - Audio Data Resolution
--
-- PCM_OS - BCLK oversampling ratio
--
-- PCM_FMT - Audio Data Format
-- 0 : Left-Justified Format
-- 1 : I2S Format
-- 2 : Right-Justified Format
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

library Machxo2;
use Machxo2.components.all;

library work;
use work.fxbox_pkg.all;

entity i2s_slave is
	generic (	PCM_RES		:	natural := 24;
				PCM_OS		:	natural := 128;
				PCM_FMT		:	natural	:= 0 );
	port 	(	MRST_N		:	in	std_logic;
				BCLK		:	in	std_logic;
				WCLK		:	in	std_logic;
				DATA		:	in	std_logic;
				DATA_IN_L	:	out	std_logic_vector(23 downto 0);
				DATA_IN_R	:	out	std_logic_vector(23 downto 0);
				READY		:	out std_logic );
end i2s_slave;

architecture rtl of i2s_slave is
	
	signal READY_FLAG : std_logic;

	signal DATA_IN_L_T : std_logic_vector(PCM_RES - 1 downto 0);
	signal DATA_IN_R_T : std_logic_vector(PCM_RES - 1 downto 0);
	signal DATA_FULL : std_logic;
	
	signal BIT_CTR : unsigned( integer(ceil(log2(real(PCM_RES)))) - 1 downto 0 );
	signal BIT_CTR_RST_N : std_logic;

	signal WCLK_R : std_logic;
	signal WCLK_EDGE : std_logic;
	signal WCLK_FLIP : std_logic;
	
	signal BCLK_SR : std_logic;
	signal BCLK_SR_L : std_logic;
	signal BCLK_SR_R : std_logic;
	signal BCLK_GATE : std_logic;
	signal BCLK_GATE_RELEASE : std_logic;
	
	signal BIT_DELAY_SR : std_logic_vector(PCM_OS - 1 downto 0);
	
begin

	
	--// I2S format definition //--

	with (PCM_FMT) select
	BCLK_GATE_RELEASE <= WCLK_EDGE when 0,
						 BIT_DELAY_SR(0) when 1,
						 BIT_DELAY_SR( (PCM_OS / 2) - PCM_RES - 1) when 2,
						 WCLK_EDGE when others;
	
	with (PCM_FMT) select
	WCLK_FLIP <= '1' when 1,
				 '0' when others;


	--// ready flag //--
	
	process(MRST_N, WCLK) is
	begin
		if (MRST_N = '0') then	
		
			READY_FLAG <= '0';
			READY <= '0';
			
		elsif rising_edge(WCLK) then
		
			READY_FLAG <= '1';
			
			-- FIXED: counter reset not released in time for first packet in left-justified format (now wait for one extra sample)
			READY <= READY_FLAG;
			
		end if;
	end process;
	
	
	--// WCLK edge detect //--
	
	process(BCLK) is
	begin
		if rising_edge(BCLK) then
		
			WCLK_R <= WCLK;
			WCLK_EDGE <= WCLK xor WCLK_R;
			
		end if;
	end process;
	
	
	--// bit delay for different formats //--
	
	process(READY_FLAG, BCLK) is
	begin
		if (READY_FLAG = '0') then
			
			BIT_DELAY_SR <= (others => '0');
		
		elsif rising_edge(BCLK) then
		
			BIT_DELAY_SR <= BIT_DELAY_SR(BIT_DELAY_SR'length - 2 downto 0) & WCLK_EDGE;
		
		end if;
	end process;
	
	
	--// counter for bit clock //--
	
	-- bit counter reset
	process(READY_FLAG, BCLK) is
	begin
		if (READY_FLAG = '0') then
		
			BIT_CTR_RST_N <= '0';
			
		elsif falling_edge(BCLK) then
		
			if (DATA_FULL = '1') then
				BIT_CTR_RST_N <= '0';
			else
				BIT_CTR_RST_N <= '1';
			end if;
			
		end if;
	end process;
	
	-- bit counter
	process(BIT_CTR_RST_N, BCLK_SR) is
	begin
		if (BIT_CTR_RST_N = '0') then
		
			BIT_CTR <= (others => '0');
			
		elsif rising_edge(BCLK_SR) then
		
			BIT_CTR <= BIT_CTR + 1;
			
		end if;
	end process;
	
	
	--// data flags //--
	
	DATA_FULL <= '1' when (to_integer(BIT_CTR) = PCM_RES) else '0';

	
	--// gated bit clock for shifting data in //--
	
	BCLK_SR <= BCLK when (BCLK_GATE = '1') else '0';
	
	BCLK_SR_L <= BCLK_SR when (WCLK = '1') else '0';
	BCLK_SR_R <= BCLK_SR when (WCLK = '0') else '0';
				
	process(BIT_CTR_RST_N, BCLK_GATE_RELEASE) is
	begin
		if (BIT_CTR_RST_N = '0') then
			
			BCLK_GATE <= '0';
			
		elsif rising_edge(BCLK_GATE_RELEASE) then
			
			BCLK_GATE <= '1';
			
		end if;
	end process;
	
	
	--// receiving data //--
	
	with (WCLK_FLIP) select
	DATA_IN_L <= DATA_IN_L_T when '0',
				 DATA_IN_R_T when others;
	
	with (WCLK_FLIP) select
	DATA_IN_R <= DATA_IN_R_T when '0',
				 DATA_IN_L_T when others;
	
	-- clocking in left-channel data
	process(BCLK_SR_L) is
	begin
		if rising_edge(BCLK_SR_L) then
		
			DATA_IN_L_T <= DATA_IN_L_T(DATA_IN_L'length - 2 downto 0) & DATA;
			
		end if;
	end process;
	
	-- clocking in right-channel data
	process(BCLK_SR_R) is
	begin
		if rising_edge(BCLK_SR_R) then
		
			DATA_IN_R_T <= DATA_IN_R_T(DATA_IN_R'length - 2 downto 0) & DATA;
			
		end if;
	end process;


end rtl;