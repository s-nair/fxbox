library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity testbench is
end testbench;

architecture tb of testbench is

	component display_driver is
		port (	SDA,SCL :	out std_logic;
				RUN		:	in	std_logic;
				RESET	:	in	std_logic;
				BUSY	:	out	std_logic;
				MODE_FX :	in	unsigned;
				DLY_CLK	:	in	std_logic;
				MCLK	:	in	std_logic);
	end component;

	constant DLY_CLK_P	:	time := 862 us;
	constant MCLK_P		:	time := 1684 ns;

	signal SDA,SCL : std_logic;
	signal RUN	: std_logic;
	signal RESET : std_logic;
	signal BUSY : std_logic;
	signal MODE_FX : unsigned(3 - 1 downto 0);
	signal DLY_CLK : std_logic := '0';
	signal MCLK : std_logic := '0';

begin

	DD0: display_driver
		port map (	SDA		=> SDA,
					SCL		=> SCL,
					RUN 	=> RUN,
					RESET	=> RESET,
					BUSY	=> BUSY,
					MODE_FX => MODE_FX,
					DLY_CLK	=> DLY_CLK,
					MCLK	=> MCLK	);

	DLY_CLK <= not DLY_CLK after DLY_CLK_P / 2;
	MCLK <= not MCLK after MCLK_P / 2;
	
	RUN <= '0';
	MODE_FX <= "001";

	process is
	begin

	RESET <= '0';

	wait for 100 ns;
	
	RESET <= '1';

	wait;
	end process;

end tb;