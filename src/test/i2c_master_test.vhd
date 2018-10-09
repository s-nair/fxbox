library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity i2cm_test is
	port (	SDA,SCL	:	out	std_logic	);
end i2cm_test;

architecture rtl of i2cm_test is
	
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
	
	component i2c_master is
		port (	SDA,SCL		:	out		std_logic;
				RUN			:	in		std_logic;
				BUSY		:	out		std_logic;
				ERROR		:	out		std_logic;
				ADDRESS		:	in		std_logic_vector(6 downto 0);
				READ_EN		:	in		std_logic;
				DATA_WRITE	:	in		std_logic_vector(7 downto 0);
				DATA_READ	:	out		std_logic_vector(7 downto 0);
				NEXT_DATA	:	in		std_logic;
				READY_DATA	:	out		std_logic;
				SCLK		:	in		std_logic);
	end component;
	
	constant CLK_TREE_LEN : natural := 15;
	
	signal	RUN			:	std_logic;
	signal	BUSY		:	std_logic;
	signal	ERROR		:	std_logic;
	signal	ADDRESS		:	std_logic_vector(6 downto 0);
	signal	READ_EN		:	std_logic;
	signal	DATA_WRITE	:	std_logic_vector(7 downto 0);
	signal	DATA_READ	:	std_logic_vector(7 downto 0);
	signal	NEXT_DATA	:	std_logic;
	signal	READY_DATA	:	std_logic;
	
	signal CLK_TREE : unsigned(CLK_TREE_LEN - 1 downto 0);
	signal DISP_CLK : std_logic;
	
	signal CLK_TREE_LOAD : unsigned(CLK_TREE_LEN - 1 downto 0);
	
begin

	OSC0: OSCH
		--generic map (NOM_FREQ => "133.00")
		generic map (NOM_FREQ => "38.00")
		port 	map (STDBY => '0', OSC => M_CLK, SEDSTDBY => OPEN);
	
	I2CM: i2c_master
		port map (	SDA			=>	SDA,
					SCL			=>	SCL,
					RUN			=>	RUN,
					BUSY		=>	BUSY,
					ERROR		=>	ERROR,
					ADDRESS		=>	ADDRESS,
					READ_EN		=>	READ_EN,
					DATA_WRITE	=>	DATA_WRITE,
					DATA_READ	=>	DATA_READ,
					NEXT_DATA	=>	NEXT_DATA,
					READY_DATA	=>	READY_DATA,
					SCLK		=>	DISP_CLK);
					
	CTR0 : clock_tree
		generic map	(	DIV_LEN	=>	CLK_TREE_LEN)
		port map	(	M_CLOCK	=>	M_CLK,
						LOAD	=>	'0',
						D		=>	CLK_TREE_LOAD,
						CLOCK	=>	CLK_TREE);
					
					
	CLK_TREE_LOAD <= (others => '0');
	
	-- clock tree distribution
	DISP_CLK <= CLK_TREE(CLK_TREE'length - 10);
	
	ADDRESS <= "0111100";
	READ_EN <= '0';	
	DATA_WRITE <= x"14";
	NEXT_DATA <= '0';
	
	RUN <= '1';
	
end rtl;