library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.fxbox_pkg.all;

entity testbench is
end testbench;

architecture tb of testbench is

	component box_top is
		port ( SDA		:	out std_logic;
			   SCL		:	out std_logic;
			   LEFT_IN	:	in	std_logic;
			   RIGHT_IN	:	in	std_logic;
			   RESET	:	in	std_logic);
	end component;

	signal SDA : std_logic;
	signal SCL : std_logic;
	signal LEFT_IN : std_logic;
	signal RIGHT_IN : std_logic;
	signal RESET : std_logic;

begin

	FXBOX: box_top
		port map (	SDA => SDA,
					SCL => SCL,
					LEFT_IN => LEFT_IN,
					RIGHT_IN => RIGHT_IN,
					RESET => RESET	);

	process is
	begin
	

	LEFT_IN <= '1';
	RIGHT_IN <= '1';
	RESET <= '0';
	
	wait for 100 ns;
	
	RESET <= '1';
	
	wait for 100 ms;
	
	--LEFT_IN <= '1';
	RIGHT_IN <= '0';
	
	wait for 10 ms;
	
	RIGHT_IN <= '1';
	--LEFT_IN <= '0';
	
	wait for 90 ms;
	
	LEFT_IN <= '0';
	
	wait for 10 ms;
	
	LEFT_IN <= '1';

	wait;
	end process;

end tb;