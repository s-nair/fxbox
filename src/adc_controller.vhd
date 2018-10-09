library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

library Machxo2;
use Machxo2.components.all;

library work;
use work.fxbox_pkg.all;

entity adc_controller is
	port (  MRST_N		:	in	std_logic;
			ADC_CLK		:	in	std_logic;
			ADC_CLIPL_P	:	in	std_logic;
			ADC_SM		:	out	std_logic;
			ADC_FMT1	:	out	std_logic;
			ADC_FMT0	:	out	std_logic;
			ADC_FS2		:	out	std_logic;
			ADC_FS1		:	out	std_logic;
			ADC_FS0		:	out	std_logic;
			ADC_HPFD_P	:	out	std_logic;
			ADC_READY	:	out	std_logic;
			ADC_RST_N	:	out	std_logic);
end adc_controller;

architecture rtl of adc_controller is

	-- 18.432 MHz * 1024 periods
	signal RST_WAIT_SR : unsigned( DATA_WAIT_LEN - 1 downto 0 );

begin

	-- slave mode
	ADC_SM <= '0';
	
	-- I2S data format
	ADC_FMT1 <= '0';
	ADC_FMT0 <= '1';
	
	-- single rate sampling mode with clock auto-detection -> Fsck = 384 * Fs (Fs = 48 kHz, Fsck = 18.432 MHz)
	ADC_FS2 <= '0';
	ADC_FS1 <= '1';
	ADC_FS0 <= '0';
	
	-- enable digital high-pass filter
	ADC_HPFD_P <= '0';
	
	-- reset shift register
	ADC_RST_N <= MRST_N;
	
	
	-- data good shift register
	ADC_READY <= RST_WAIT_SR(RST_WAIT_SR'length - 1);
	
	process(MRST_N, ADC_CLK) is
	begin
	
		if (MRST_N = '0') then
		
			RST_WAIT_SR <= (others => '0');
		
		elsif rising_edge(ADC_CLK) then
		
			RST_WAIT_SR <= RST_WAIT_SR(RST_WAIT_SR'length - 2 downto 0) & '1';
		
		end if;
		
	end process;
	

end rtl;