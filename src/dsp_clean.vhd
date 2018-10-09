library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library Machxo2;
use Machxo2.components.all;

library work;
use work.fxbox_pkg.all;

entity dsp_clean is
	port (  DSP_RST_N		:	in	std_logic;
			I2S_BCLK		:	in	std_logic;
			I2S_WCLK		:	in	std_logic;
			DSP_DATA_IN		:	in	DATA_STEREO_ARR_T;
			DSP_DATA_OUT	:	out	DATA_STEREO_ARR_T);
end dsp_clean;

architecture rtl of dsp_clean is
	
	constant DATA_ZERO : std_logic_vector(I2S_RES - 1 downto 0) := (others => '0');

begin
	
	--// pass-through //--
	
	with (DSP_RST_N) select
	DSP_DATA_OUT <=	DSP_DATA_IN 			when '1',
					(DATA_ZERO, DATA_ZERO)	when others;

end rtl;