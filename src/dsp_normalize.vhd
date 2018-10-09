-- 10010
-- 10100

-- 11010
-- 10100 x
-- 11111 v


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library Machxo2;
use Machxo2.components.all;

library work;
use work.fxbox_pkg.all;

entity dsp_normalize is
	port (  DSP_RST_N		:	in	std_logic;
			I2S_BCLK		:	in	std_logic;
			I2S_WCLK		:	in	std_logic;
			DSP_DATA_IN		:	in	DATA_STEREO_ARR_T;
			DSP_DATA_OUT	:	out	DATA_STEREO_ARR_T);
end dsp_normalize;

architecture rtl of dsp_normalize is
	
	constant DATA_ZERO : std_logic_vector(I2S_RES - 1 downto 0) := (others => '0');
	constant DATA_ONE : std_logic_vector(I2S_RES - 1 downto 0) := (others => '1');
	
	signal DATA_GAIN_IN : DATA_STEREO_ARR_T;
	signal DATA_GAIN_OUT : DATA_STEREO_ARR_T;

begin
	
	--// add gain //--
	
	with (DSP_RST_N) select
	DATA_GAIN_IN <=	DSP_DATA_IN 			when '1',
					(DATA_ZERO, DATA_ZERO)	when others;
	
	-- 6 dB (shift-left 1 bit)
	
	DATA_GAIN_OUT(0) <= DATA_GAIN_IN(0)(I2S_RES - 1) & DATA_GAIN_IN(0)(I2S_RES - 3 downto 0) & '0';
	DATA_GAIN_OUT(1) <= DATA_GAIN_IN(1)(I2S_RES - 1) & DATA_GAIN_IN(1)(I2S_RES - 3 downto 0) & '0';
	
	DSP_DATA_OUT <= DATA_GAIN_OUT;

end rtl;