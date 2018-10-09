library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library Machxo2;
use Machxo2.components.all;

entity i2c_ctrl_test is
	port (	SDA,SCL : out std_logic;
			RESET	: in std_logic);
end i2c_ctrl_test;

architecture rtl of i2c_ctrl_test is

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

	component i2c_controller_ram is
		port (	SDA,SCL 		:	out std_logic;
				RUN				:	in	std_logic;
				RESET			:	in	std_logic;
				BUSY			:	out	std_logic;
				RESET_BUF		: 	in	std_logic;
				WRITE_EN_BUF	:	in std_logic;
				WRITE_ADDR_BUF	:	in std_logic_vector(9 downto 0);
				WRITE_DATA_BUF	:	in std_logic_vector(7 downto 0);
				MCLK			:	in	std_logic);
	end component;
	
	constant CLK_TREE_LEN : natural := 15;
	
	signal CLK_TREE : unsigned(CLK_TREE_LEN - 1 downto 0);
	signal DISP_CLK : std_logic;
	
	signal CLK_TREE_LOAD : unsigned(CLK_TREE_LEN - 1 downto 0);

	signal RUN	: std_logic;
	signal BUSY : std_logic;
	signal RESET_BUF : std_logic;
	signal WRITE_EN_BUF : std_logic;
	signal WRITE_ADDR_BUF : std_logic_vector(9 downto 0);
	signal WRITE_DATA_BUF : std_logic_vector(7 downto 0);

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

	I2CC: i2c_controller_ram
		port map (	SDA  			=> SDA,
					SCL  			=> SCL,
					RUN  			=> RUN,
					RESET			=> RESET,
					BUSY 			=> BUSY,
					RESET_BUF		=> RESET_BUF,
					WRITE_EN_BUF	=> WRITE_EN_BUF,
					WRITE_ADDR_BUF	=> WRITE_ADDR_BUF,
					WRITE_DATA_BUF	=> WRITE_DATA_BUF,
					MCLK 			=> DISP_CLK	);
	
	CLK_TREE_LOAD <= (others => '0');
	
	-- clock tree distribution
	DISP_CLK <= CLK_TREE(CLK_TREE'length - 10);
	
	RESET_BUF <= '0';
	WRITE_EN_BUF <= '0';
	WRITE_ADDR_BUF <= (others => '0');
	WRITE_DATA_BUF <= (others => '0');

	RUN <= '0';

end rtl;