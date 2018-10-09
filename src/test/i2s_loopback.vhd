library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library Machxo2;
use Machxo2.components.all;

library work;
use work.fxbox_pkg.all;

entity i2s_loopback is
	port (	WCLK_OUT	:	out std_logic;
			BCLK_OUT	:	out	std_logic;
			DATA_OUT	:	out	std_logic;
			WCLK_IN		:	in	std_logic;
			BCLK_IN		:	in	std_logic;
			DATA_IN		:	in	std_logic;
			LED_L		:	out	std_logic;
			LED_R		:	out	std_logic;
			CLK_INP		:	out	std_logic;
			RESET		:	in	std_logic	);
end i2s_loopback;

architecture rtl of i2s_loopback is

	-- internal oscillator component
	component OSCH
		generic ( NOM_FREQ	:	string	:=	"7.00" );
		port 	( STDBY		:	in	std_logic;
				  OSC		:	out	std_logic;
				  SEDSTDBY	:	out	std_logic);
	end component;
	
	-- parameterized module component declaration
	component sclk_pll
		port (CLKI: in  std_logic; RST: in  std_logic; 
			ENCLKOP: in  std_logic; ENCLKOS: in  std_logic; 
			CLKOP: out  std_logic; CLKOS: out  std_logic; 
			LOCK: out  std_logic);
	end component;

	component i2s_master is
		generic (	PCM_RES		:	natural;
					PCM_OS		:	natural;
					PCM_FMT		:	natural );
		port	(	MRST_N		:	in	std_logic;
					BCLK		:	in	std_logic;
					WCLK		:	in	std_logic;
					DATA		:	out	std_logic;
					DATA_OUT_L	:	in	std_logic_vector;
					DATA_OUT_R	:	in	std_logic_vector;
					READY		:	out	std_logic );
	end component;
	
	component i2s_slave is
		generic (	PCM_RES		:	natural;
					PCM_OS		:	natural;
					PCM_FMT		:	natural );
		port 	(	MRST_N		:	in	std_logic;
					BCLK		:	in	std_logic;
					WCLK		:	in	std_logic;
					DATA		:	in	std_logic;
					DATA_IN_L	:	out	std_logic_vector;
					DATA_IN_R	:	out	std_logic_vector;
					READY		:	out std_logic );
	end component;
	
	constant TEST_PCKT_L : std_logic_vector(I2S_M_RES - 1 downto 0) := x"AAABBB";
	constant TEST_PCKT_R : std_logic_vector(I2S_M_RES - 1 downto 0) := x"CCCDDD";
	
	signal CLK_IN : std_logic;
	
	signal M_SCLK : std_logic;
	signal M_WCLK : std_logic;
	signal M_BCLK : std_logic;
	
	signal DATA_OUT_L, DATA_OUT_R : std_logic_vector(I2S_M_RES - 1 downto 0);
	signal DATA_IN_L, DATA_IN_R : std_logic_vector(I2S_M_RES - 1 downto 0);
	
	signal M_READY, S_READY : std_logic;
	
	signal PLL_RESET : std_logic;
	signal PLL_LOCK : std_logic;
	
	signal CLK_TREE : unsigned(6 downto 0);

begin

	GSR0 : GSR port map (GSR => RESET);
	
	OSC0: OSCH
		generic map (NOM_FREQ => "7.00")
		port 	map (STDBY => '0', OSC => CLK_IN, SEDSTDBY => OPEN);
	
	-- parameterized module component instance
	PLL0 : sclk_pll
		port map (CLKI=>CLK_IN, RST=>PLL_RESET, ENCLKOP=>'1', ENCLKOS=>'1', CLKOP=>M_SCLK, 
			CLKOS=>M_BCLK, LOCK=>PLL_LOCK);

	I2SM: i2s_master
		generic map ( PCM_RES => I2S_S_RES,
					  PCM_OS => I2S_S_OS,
					  PCM_FMT => I2S_S_FMT )
		port map (  MRST_N => RESET,
					BCLK => M_BCLK,
					WCLK => M_WCLK,
					DATA => DATA_OUT,
					DATA_OUT_L => DATA_OUT_L,
					DATA_OUT_R => DATA_OUT_R,
					READY => M_READY );
					
	I2SS: i2s_slave
		generic map ( PCM_RES => I2S_S_RES,
					  PCM_OS => I2S_S_OS,
					  PCM_FMT => I2S_S_FMT )
		port map (	MRST_N => RESET,
					BCLK => BCLK_IN,
					WCLK => WCLK_IN,
					DATA => DATA_IN,
					DATA_IN_L => DATA_IN_L,
					DATA_IN_R => DATA_IN_R,
					READY => S_READY);
	
	
	CLK_INP <= CLK_IN;
	PLL_RESET <= not RESET;
	
	WCLK_OUT <= M_WCLK;
	BCLK_OUT <= M_BCLK;
	
	M_WCLK <= CLK_TREE(CLK_TREE'length - 1);
	
	DATA_OUT_L <= TEST_PCKT_L;
	DATA_OUT_R <= TEST_PCKT_R;
	
	clk_tree_ctr: process(PLL_LOCK, M_BCLK) is
	begin
		if (PLL_LOCK = '0') then
			
			CLK_TREE <= (others => '0');
		
		elsif falling_edge(M_BCLK) then
		
			CLK_TREE <= CLK_TREE + 1;
		
		end if;
	end process clk_tree_ctr;
	
	with (DATA_IN_L) select
	LED_L <= '0' when TEST_PCKT_L,
			 '1' when others;
	
	with (DATA_IN_R) select
	LED_R <= '0' when TEST_PCKT_R,
			 '1' when others;

end rtl;