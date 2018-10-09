library IEEE;
use IEEE.std_logic_1164.all;

-- Package Declaration Section
package fxbox_pkg is

	-- FXBOX TOP --

	constant FX_MODE_COUNT	: natural := 3;
	
	-- system clocks
	constant SYS_CLK_TREE_LEN	: natural := 15;
	constant ADC_CLK_BIT		: natural := 5;
	constant DAC_CLK_BIT		: natural := 5;
	constant DISP_CLK_BIT		: natural := 5;
	constant BTN_CLK_BIT		: natural := 14;
	
	-- i2s clocks	
	constant I2S_CLK_TREE_LEN	: natural := 1;
	constant I2S_SCLK_BIT		: natural := 0;
	
	
	-- ADC CONTROLLER --
	
	constant DATA_WAIT_LEN	:	natural	:= 45;		-- ( ceiling(100 us * 437_500 kHz) + 1 )
	
	
	-- DISPLAY DRIVER --
	
	constant CTR_LEN_DRV	: natural := 10;
	constant PON_DLY_MS		: natural := 20;
	
	
	-- I2C CONTROLLER --
	
	constant CTR_LEN_BUF : natural := 11;
	
	
	-- I2C MASTER --
	
	constant DIV_LEN_CT : natural := 5;
	
	
	-- I2S --
	
	constant I2S_RES	:	natural := 24;
	
	-- slave
	constant I2S_S_OS	:	natural := 128;
	constant I2S_S_FMT	:	natural := 1;
	
	
	-- master
	constant I2S_M_OS	:	natural := 128;
	constant I2S_M_FMT	:	natural := 1;
	
	
	-- DSP --
	
	type DATA_STEREO_ARR_T is array (1 downto 0) of std_logic_vector(I2S_RES - 1 downto 0);
   
   
end package fxbox_pkg;

package body fxbox_pkg is
end package body fxbox_pkg;	