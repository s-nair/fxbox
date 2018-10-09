library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library Machxo2;
use Machxo2.components.all;

entity disp_drv_test is
	port (	SDA,SCL	:	out	std_logic;
			RUN		:	in	std_logic;
			-----
			--IN_BTN	:	in	std_logic;
			-----
			RESET	:	in	std_logic	);
end disp_drv_test;

architecture rtl of disp_drv_test is

	-- internal oscillator component
	component OSCH
		generic ( NOM_FREQ	:	string	:=	"38.00" );
		port 	( STDBY		:	in	std_logic;
				  OSC		:	out	std_logic;
				  SEDSTDBY	:	out	std_logic);
	end component;
	signal	M_CLK	:	std_logic;
	
	component clock_tree is
		generic	(	DIV_LEN	:	natural);
		port	(	M_CLOCK	:	in	std_logic;
					LOAD	:	in	std_logic;
					D		:	in	unsigned;
					CLOCK	:	out	unsigned);
	end component;

	component display_driver is
		port (	SDA,SCL :	out std_logic;
				RUN		:	in	std_logic;
				RESET	:	in	std_logic;
				BUSY	:	out	std_logic;
				MODE_FX :	in	unsigned;
				DLY_CLK	:	in	std_logic;
				MCLK	:	in	std_logic);
	end component;
	
	constant CLK_TREE_LEN : natural := 15;
	
	signal CLK_TREE : unsigned(CLK_TREE_LEN - 1 downto 0);
	signal DISP_CLK : std_logic;
	signal DLY_CLK : std_logic;
	
	signal CLK_TREE_LOAD : unsigned(CLK_TREE_LEN - 1 downto 0);

	signal BUSY : std_logic;
	
	signal MODE_FX : unsigned(3 - 1 downto 0);

begin
	
	GSR0 : GSR port map (GSR => RESET);
	
	OSC0: OSCH
		--generic map (NOM_FREQ => "133.00")
		generic map (NOM_FREQ => "38.00")
		port 	map (STDBY => '0', OSC => M_CLK, SEDSTDBY => OPEN);
	
	CTR0 : clock_tree
		generic map	(	DIV_LEN	=>	CLK_TREE_LEN)
		port map	(	M_CLOCK	=>	M_CLK,
						LOAD	=>	'0',
						D		=>	CLK_TREE_LOAD,
						CLOCK	=>	CLK_TREE);
	
	DD0: display_driver
		port map (	SDA 	=> SDA,
					SCL  	=> SCL,
					RUN 	=> RUN,
					RESET	=> RESET,
					BUSY	=> BUSY,
					MODE_FX => MODE_FX,
					DLY_CLK	=> DLY_CLK,
					MCLK	=> DISP_CLK	);
	
	
	CLK_TREE_LOAD <= (others => '0'); 
	
	-- clock tree distribution
	DISP_CLK <= CLK_TREE(CLK_TREE'length - 10);
	DLY_CLK <= CLK_TREE(CLK_TREE'length - 1);
	
	MODE_FX <= "001";
	
end rtl;