-- CLOCK TREE -----------------------------------------------------------

-- Component Declaration Example -----------------------	
	--component clock_tree is
		--generic	(	DIV_LEN	:	natural);
		--port	(	M_CLOCK	:	in	std_logic;
					--LOAD	:	in	std_logic;
					--D		:	in	unsigned;
					--CLOCK	:	out	unsigned);
	--end component;
	
	--constant DIV_LEN_CT : natural := 4;
	
	--signal MCLK : std_logic;
	--signal CLOCK_CT : unsigned(DIV_LEN_CT - 1 downto 0);
	--signal LOAD : std_logic;
	--signal D_IN : unsigned(DIV_LEN_CT - 1 downto 0);
--------------------------------------------------------
-- Component Instantiation Example ---------------------
	--CT0 : clock_tree
		--generic map	(	DIV_LEN	=>	DIV_LEN_CT)
		--port map	(	M_CLOCK	=>	MCLK,
						--LOAD	=>	LOAD,
						--D		=>	D_IN,
						--CLOCK	=>	CLOCK_CT);
--------------------------------------------------------

--	The default frequency is 2.08MHz.  Supported frequencies (in MHz) include:

--	2.08        4.16         8.31          15.65

--	2.15        4.29         8.58          16.63

--	2.22        4.43         8.87          17.73

--	2.29        4.59         9.17          19.00

--	2.38        4.75         9.50          20.46

--	2.46        4.93         9.85          22.17

--	2.56        5.12        10.23         24.18

--	2.66        5.32        10.64         26.60

--	2.77        5.54        11.08         29.56

--	2.89        5.78        11.57         33.25

--	3.02        6.05        12.09         38.00

--	3.17        6.33        12.67         44.33

--	3.33        6.65        13.30         53.20

--	3.50        7.00        14.00         66.50

--	3.69        7.39        14.78         88.67

--	3.91        7.82        15.65       133.00

-- OSC Declaration ----------------------------------------------------------------------------------------------------
	-- internal oscillator component
	--component OSCH
		--generic ( NOM_FREQ	:	string	:=	"38.00" );		-- 38.00 MHz, or any other supported frequency
		--port 	( STDBY		:	in	std_logic;				-- '0' = OSC output is active, '1' = OSC output is off
				  --OSC		:	out	std_logic;				-- the oscillator output
				  --SEDSTDBY	:	out	std_logic);				-- required only for simulation when using standby
	--end component;
	--signal	MCLK	:	std_logic;
-----------------------------------------------------------------------------------------------------------------------	
-- OSC Instantiation -------------------------------------------------------------------------------------------------
	-- connect 38 MHz internal oscillator to MCLK signal
	--OSC0: OSCH
		--generic map (NOM_FREQ => "38.00")
		--port 	map (STDBY => '0', OSC => MCLK, SEDSTDBY => OPEN);
-----------------------------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library Machxo2;
use Machxo2.components.all;

entity clock_tree is
	generic	(	DIV_LEN	:	natural	:=	4);
	port	(	M_CLOCK	:	in	std_logic;
				LOAD	:	in	std_logic;
				D		:	in	unsigned(DIV_LEN - 1 downto 0);
				CLOCK	:	out	unsigned(DIV_LEN - 1 downto 0));
end clock_tree;

architecture rtl of clock_tree is
	
	signal	CLOCK_R		:	unsigned(DIV_LEN - 1 downto 0) := (others => '0');

begin

	counter: process(M_CLOCK) is
	begin
		
		if rising_edge(M_CLOCK) then
			if (LOAD = '1') then
				CLOCK_R <= D;
			else
				CLOCK_R <= CLOCK_R + 1;
			end if;
		end if;
	
	end process counter;

	CLOCK	<= CLOCK_R;

end rtl;