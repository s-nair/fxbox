library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.fxbox_pkg.all;

entity testbench is
end testbench;

architecture tb of testbench is

	component i2s_master is
		generic (	PCM_RES		:	natural;
					PCM_OS		:	natural;
					PCM_FMT		:	natural );
		port	(	MRST_N		:	in	std_logic;
					BCLK		:	in	std_logic;
					WCLK		:	in	std_logic;
					DATA		:	out	std_logic;
					DATA_OUT_L	:	in	std_logic_vector(23 downto 0);
					DATA_OUT_R	:	in	std_logic_vector(23 downto 0);
					READY		:	out	std_logic );
	end component;
	
	constant BCLK_P : time := 158 ns;
	constant WCLK_P : time := 20224 ns;
	
	signal MRST_N : std_logic;
	signal BCLK : std_logic := '0';
	signal WCLK : std_logic := '0';
	signal DATA : std_logic;
	signal DATA_OUT_L : std_logic_vector(23 downto 0);
	signal DATA_OUT_R : std_logic_vector(23 downto 0);
	signal READY : std_logic;

begin

	I2SS: i2s_master
		generic map ( PCM_RES => I2S_S_RES,
					  PCM_OS => I2S_S_OS,
					  PCM_FMT => I2S_S_FMT )
		port map (  MRST_N => MRST_N,
					BCLK => BCLK,
					WCLK => WCLK,
					DATA => DATA,
					DATA_OUT_L => DATA_OUT_L,
					DATA_OUT_R => DATA_OUT_R,
					READY => READY );
					
	BCLK <= not BCLK after BCLK_P / 2;
	WCLK <= not WCLK after WCLK_P / 2;
	
	process is
	begin
	
		MRST_N <= '0';
		
		wait for 10_191 ns;
		
		MRST_N <= '1';
		DATA_OUT_L <= x"000111";
		DATA_OUT_R <= x"AAABBB";
		
		wait until rising_edge(READY);
		
		wait until falling_edge(WCLK);
		
		DATA_OUT_L <= x"222333";
		
		wait until rising_edge(WCLK);
		
		DATA_OUT_R <= x"CCCDDD";
		
		wait until falling_edge(WCLK);
		
		DATA_OUT_L <= x"444555";
		
		wait until rising_edge(WCLK);
		
		DATA_OUT_R <= x"EEEFFF";
		
	wait;
	end process;

end tb;