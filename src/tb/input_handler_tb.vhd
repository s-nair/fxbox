library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity testbench is
end testbench;

architecture tb of testbench is

	component input_handler is
		port (	IN_BUTTON	:	in	std_logic;
				CLR_BUTTON	:	in	std_logic;
				OUT_BUTTON	:	out	std_logic;
				CLK_BUTTON	:	in	std_logic);
	end component;

	constant CLK_P : time := 1 ms;

	signal IN_BUTTON : std_logic;
	signal CLR_BUTTON : std_logic;
	signal OUT_BUTTON : std_logic;
	signal CLK_BUTTON : std_logic := '0';

begin

	BTN0: input_handler
		port map (	IN_BUTTON  => IN_BUTTON,
					CLR_BUTTON  => CLR_BUTTON,
					OUT_BUTTON  => OUT_BUTTON,
					CLK_BUTTON => CLK_BUTTON	);

	CLK_BUTTON <= not CLK_BUTTON after CLK_P / 2;

	process is
	begin

	IN_BUTTON <= '0';
	CLR_BUTTON <= '0';
	wait for 1 ms;
	IN_BUTTON <= '1';
	wait for 1 ms;
	IN_BUTTON <= '0';
	wait for 24 ms;
	CLR_BUTTON <= '1';
	wait for 10 ms;
	IN_BUTTON <= '1';
	wait for 10 ms;
	CLR_BUTTON <= '0';
	

	wait;
	end process;

end tb;