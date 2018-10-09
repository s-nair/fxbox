library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.fxbox_pkg.all;

entity testbench is
end testbench;

architecture tb of testbench is

	component adc_controller is
		port (  MRST_N		:	in	std_logic;
				ADC_PON_CLK	:	in	std_logic;
				ADC_CLK		:	in	std_logic;
				ADC_BCK		:	in	std_logic;
				ADC_LRCK	:	in	std_logic;
				ADC_DATA	:	in	std_logic;
				ADC_CLIPL_P	:	in	std_logic;
				ADC_SM		:	out	std_logic;
				ADC_FMT1	:	out	std_logic;
				ADC_FMT0	:	out	std_logic;
				ADC_FS2		:	out	std_logic;
				ADC_FS1		:	out	std_logic;
				ADC_FS0		:	out	std_logic;
				ADC_HPFD_P	:	out	std_logic;
				ADC_SCKI_EN	:	out	std_logic;
				ADC_RST_N	:	out	std_logic);
	end component;
	
	constant ADC_CLK_P : time := 50 ns;
	constant ADC_PON_CLK_P : time := 5389 ns;

	signal MRST_N : std_logic;
	signal ADC_PON_CLK : std_logic := '0';
	signal ADC_CLK : std_logic := '0';
	signal ADC_BCK : std_logic;
	signal ADC_LRCK : std_logic;
	signal ADC_DATA : std_logic;
	signal ADC_CLIPL_P : std_logic;
	signal ADC_SM : std_logic;
	signal ADC_FMT1 : std_logic;
	signal ADC_FMT0 : std_logic;
	signal ADC_FS2 : std_logic;
	signal ADC_FS1 : std_logic;
	signal ADC_FS0 : std_logic;
	signal ADC_HPFD_P : std_logic;
	signal ADC_SCKI_EN : std_logic;
	signal ADC_RST_N : std_logic;

begin

	ADC: adc_controller
		port map (	MRST_N		=>	MRST_N,
					ADC_CLK		=>	ADC_CLK,
					ADC_BCK		=>	ADC_BCK,
					ADC_LRCK	=>	ADC_LRCK,
					ADC_PON_CLK	=>	ADC_PON_CLK,
					ADC_DATA	=>	ADC_DATA,
					ADC_CLIPL_P	=>	ADC_CLIPL_P,
					ADC_SM		=>	ADC_SM,
					ADC_FMT1	=>	ADC_FMT1,
					ADC_FMT0	=>	ADC_FMT0,
					ADC_FS2		=>	ADC_FS2,
					ADC_FS1		=>	ADC_FS1,
					ADC_FS0		=>	ADC_FS0,
					ADC_HPFD_P	=>	ADC_HPFD_P,
					ADC_SCKI_EN	=>	ADC_SCKI_EN,
					ADC_RST_N	=>	ADC_RST_N	);


	ADC_CLK <= not ADC_CLK after ADC_CLK_P / 2;
	ADC_PON_CLK <= not ADC_PON_CLK after ADC_PON_CLK_P / 2;
	
	ADC_BCK <= '0';
	ADC_LRCK <= '0';
	ADC_DATA <= '0';
	ADC_CLIPL_P <= '0';

	process is
	begin
	
		MRST_N <= '1';
	
		wait for 200 ns;
		
		MRST_N <= '0';
		
		wait for 100 ns;
		
		MRST_N <= '1';

	wait;
	end process;

end tb;