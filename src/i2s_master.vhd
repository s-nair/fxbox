--
-- Stereo I2S Master Driver --
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

entity i2s_master is
	generic (	PCM_RES		:	natural := 24;
				PCM_OS		:	natural := 128;
				PCM_FMT		:	natural	:= 0 );
	port 	(	MRST_N		:	in		std_logic;
				BCLK		:	in		std_logic;
				WCLK		:	in		std_logic;
				DATA		:	out		std_logic;
				DATA_OUT_L	:	in		std_logic_vector(PCM_RES - 1 downto 0);
				DATA_OUT_R	:	in		std_logic_vector(PCM_RES - 1 downto 0);
				READY		:	out		std_logic );
end i2s_master;

architecture rtl of i2s_master is
	
	signal READY_FLAG : std_logic;
	signal READY_T : std_logic;

	signal DATA_T : std_logic;
	signal DATA_OUT_SR_L : std_logic_vector(PCM_RES - 1 downto 0);
	signal DATA_OUT_SR_R : std_logic_vector(PCM_RES - 1 downto 0);
	signal DATA_OUT_L_BUF : std_logic_vector(PCM_RES - 1 downto 0);
	signal DATA_OUT_R_BUF : std_logic_vector(PCM_RES - 1 downto 0);
	
	signal DATA_EMPTY : std_logic;
	
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
	
	READY <= READY_T;
	
	process(MRST_N, WCLK) is
	begin
		if (MRST_N = '0') then	
		
			READY_FLAG <= '0';
			READY_T <= '0';
			
		elsif rising_edge(WCLK) then
		
			READY_FLAG <= '1';
			
			-- FIXED: counter reset not released in time for first packet in left-justified format (now wait for one extra sample)
			READY_T <= READY_FLAG;
			
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
	
	process(BCLK) is
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
		
			if (DATA_EMPTY = '1') then
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
			
		elsif falling_edge(BCLK_SR) then
		
			BIT_CTR <= BIT_CTR + 1;
			
		end if;
	end process;
	
	
	--// data flags //--
	
	-- FIXED: extra counter cycle clocked (reduced comparator value by 1)
	DATA_EMPTY <= '1' when (to_integer(BIT_CTR) = PCM_RES - 1) else '0';

	
	--// gated bit clock for shifting data in //--
	
	BCLK_SR <= BCLK when (BCLK_GATE = '1') else '0';
	
	--BCLK_SR_L <= BCLK_SR when (WCLK = '1') else '0';
	--BCLK_SR_R <= BCLK_SR when (WCLK = '0') else '0';
				
	process(BIT_CTR_RST_N, BCLK_GATE_RELEASE) is
	begin
		if (BIT_CTR_RST_N = '0') then
			
			BCLK_GATE <= '0';
			
		elsif rising_edge(BCLK_GATE_RELEASE) then
			
			BCLK_GATE <= '1';
			
		end if;
	end process;
	
	
	--// loading data //--
	
	process(WCLK) is
	begin
		if falling_edge(WCLK) then
		
			DATA_OUT_L_BUF <= DATA_OUT_L;
		
		end if;
	end process;
	
	process(WCLK) is
	begin
		if rising_edge(WCLK) then
		
			DATA_OUT_R_BUF <= DATA_OUT_R;
		
		end if;
	end process;
	
	
	--// sending data //--
	
	DATA_T <=	DATA_OUT_SR_L(DATA_OUT_SR_L'length - 1) when (WCLK = '1' and WCLK_FLIP = '0') else
				DATA_OUT_SR_R(DATA_OUT_SR_L'length - 1) when (WCLK = '0' and WCLK_FLIP = '0') else
				DATA_OUT_SR_L(DATA_OUT_SR_L'length - 1) when (WCLK = '0' and WCLK_FLIP = '1') else
				DATA_OUT_SR_R(DATA_OUT_SR_L'length - 1) when (WCLK = '1' and WCLK_FLIP = '1');
			
	DATA <= DATA_T and READY_T;
	
	-- load left-channel data when right-channel is sending (shift & wrap)
	process(BCLK_SR) is
	begin
		if falling_edge(BCLK_SR) then
		
			if (WCLK = '0') then
				DATA_OUT_SR_L <= DATA_OUT_L_BUF;
			else
				DATA_OUT_SR_L <= DATA_OUT_SR_L(DATA_OUT_SR_L'length - 2 downto 0) & DATA_OUT_SR_L(DATA_OUT_SR_L'length - 1);
			end if;
			
		end if;
	end process;
	
	-- load right-channel data when left-channel is sending (shift & wrap)
	process(BCLK_SR) is
	begin
		if falling_edge(BCLK_SR) then
		
			if (WCLK = '1') then
				DATA_OUT_SR_R <= DATA_OUT_R_BUF;
			else
				DATA_OUT_SR_R <= DATA_OUT_SR_R(DATA_OUT_SR_R'length - 2 downto 0) & DATA_OUT_SR_R(DATA_OUT_SR_R'length - 1);
			end if;
			
		end if;
	end process;


end rtl;