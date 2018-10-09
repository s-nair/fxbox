library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_misc.all;

library Machxo2;
use Machxo2.components.all;

entity input_handler is
	port (	IN_BUTTON	:	in	std_logic;
			CLR_BUTTON	:	in	std_logic;
			OUT_BUTTON	:	out	std_logic;
			CLK_BUTTON	:	in	std_logic);
			--RESET		:	in	std_logic);
end entity;

architecture rtl of input_handler is

	constant DEBOUNCE_WINDOW : natural := 20;

	signal IN_BUTTON_SR : std_logic_vector(DEBOUNCE_WINDOW - 1 downto 0);
	signal IN_DEBOUNCE : std_logic;
	
	signal OUT_BUTTON_T : std_logic;

begin

	-- debouncing LUTs
	with (IN_BUTTON_SR) select
	IN_DEBOUNCE <= '0' when (others => '1'),
				   '1' when others;


	-- window of sampled inputs used to debounce button
	-- CLK_BUTTON aimed to run at 1 kHz, window of 20 samples (20 ms) FIND RESPONSIVENESS RATE, DEBOUNCE
	process(CLK_BUTTON) is
	begin
		
		if rising_edge(CLK_BUTTON) then
			IN_BUTTON_SR <= IN_BUTTON_SR(IN_BUTTON_SR'length - 2 downto 0) & (not IN_BUTTON);
		end if;
	
	end process;
	
	
	-- output FF
	process(IN_DEBOUNCE, CLR_BUTTON) is
	begin
		
		if (CLR_BUTTON = '1') then
			OUT_BUTTON_T <= '0';
		elsif rising_edge(IN_DEBOUNCE) then
			OUT_BUTTON_T <= '1';
		end if;
	
	end process;
	
	OUT_BUTTON <= OUT_BUTTON_T;

end rtl;