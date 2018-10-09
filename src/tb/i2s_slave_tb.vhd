library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.fxbox_pkg.all;

entity testbench is
end testbench;

architecture tb of testbench is

	component i2s_slave is
		generic (	PCM_RES		:	natural;
					PCM_OS		:	natural;
					PCM_FMT		:	natural );
		port 	(	MRST_N		:	in	std_logic;
					BCLK		:	in	std_logic;
					WCLK		:	in	std_logic;
					DATA		:	in	std_logic;
					DATA_IN_L	:	out	std_logic_vector(23 downto 0);
					DATA_IN_R	:	out	std_logic_vector(23 downto 0);
					READY		:	out std_logic );
	end component;
	
	constant BCLK_P : time := 158 ns;
	constant WCLK_P : time := 20224 ns;
	
	signal MRST_N : std_logic;
	signal BCLK : std_logic := '0';
	signal WCLK : std_logic := '0';
	signal DATA : std_logic := '0';
	signal DATA_IN_L : std_logic_vector(23 downto 0);
	signal DATA_IN_R : std_logic_vector(23 downto 0);
	signal READY : std_logic;

begin

	I2SS: i2s_slave
		generic map ( PCM_RES => I2S_S_RES,
					  PCM_OS => I2S_S_OS,
					  PCM_FMT => I2S_S_FMT )
		port map (	MRST_N => MRST_N,
					BCLK => BCLK,
					WCLK => WCLK,
					DATA => DATA,
					DATA_IN_L => DATA_IN_L,
					DATA_IN_R => DATA_IN_R,
					READY => READY);
					
	BCLK <= not BCLK after BCLK_P / 2;
	WCLK <= not WCLK after WCLK_P / 2;
	DATA <= not DATA after BCLK_P;
	
	process is
	begin
	
		MRST_N <= '0';
		
		wait for 10_191 ns;
		
		MRST_N <= '1';
		
	wait;
	end process;

end tb;