library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_misc.all;

library Machxo2;
use Machxo2.components.all;

library work;
use work.fxbox_pkg.all;

entity box_top is
	port ( DISP_I2C_SDA	:	out	std_logic;
		   DISP_I2C_SCL	:	out std_logic;
		
		   BTN_LEFT_IN	:	in	std_logic;
		   BTN_RIGHT_IN	:	in	std_logic;
		   
		   ADC_SCK		:	out	std_logic;
		   ADC_BCK		:	in	std_logic;
		   ADC_LRCK		:	in	std_logic;
		   ADC_DATA		:	in	std_logic;
		   ADC_CLIPL_P	:	in	std_logic;
		   ADC_SM		:	out	std_logic;
		   ADC_FMT1		:	out	std_logic;
		   ADC_FMT0		:	out	std_logic;
		   ADC_FS2		:	out	std_logic;
		   ADC_FS1		:	out	std_logic;
		   ADC_FS0		:	out	std_logic;
		   ADC_HPFD_P	:	out	std_logic;
		   ADC_RST_N	:	out	std_logic;
		   
		   DAC_SCK		:	out std_logic;
		   DAC_BCK		:	out std_logic;
		   DAC_LRCK		:	out std_logic;
		   DAC_DATA		:	out std_logic;
		   DAC_I2C_SCL	:	out	std_logic;
		   DAC_I2C_SDA	:	out	std_logic;
		   DAC_ZEROL_P	:	in	std_logic;
		   DAC_RST_N	:	out	std_logic;
		   
		   RESET		:	in	std_logic);
end box_top;

architecture rtl of box_top is

	-- internal oscillator component
	component OSCH
		generic ( NOM_FREQ	:	string );
		port 	( STDBY		:	in	std_logic;
				  OSC		:	out	std_logic;
				  SEDSTDBY	:	out	std_logic);
	end component;
	
	component adc_controller is
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
	end component;
	
	component dac_controller is
		port (  MRST_N		:	in	std_logic;
				DAC_CLK		:	in	std_logic;
				DAC_I2C_SCL	:	out	std_logic;
				DAC_I2C_SDA	:	out	std_logic;
				DAC_ZEROL_P	:	in	std_logic;
				DAC_RST_N	:	out	std_logic);
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

	component display_driver is
		port (	SDA,SCL :	out std_logic;
				RUN		:	in	std_logic;
				RESET	:	in	std_logic;
				BUSY	:	out	std_logic;
				FX_MODE :	in	unsigned;
				DLY_CLK	:	in	std_logic;
				MCLK	:	in	std_logic);
	end component;
	
	component input_handler is
		port (	IN_BUTTON	:	in	std_logic;
				CLR_BUTTON	:	in	std_logic;
				OUT_BUTTON	:	out	std_logic;
				CLK_BUTTON	:	in	std_logic);
	end component;
	
	component dsp_normalize is
		port (  DSP_RST_N		:	in	std_logic;
				I2S_BCLK		:	in	std_logic;
				I2S_WCLK		:	in	std_logic;
				DSP_DATA_IN		:	in	DATA_STEREO_ARR_T;
				DSP_DATA_OUT	:	out	DATA_STEREO_ARR_T);
	end component;
	
	component dsp_clean is
		port (  DSP_RST_N		:	in	std_logic;
				I2S_BCLK		:	in	std_logic;
				I2S_WCLK		:	in	std_logic;
				DSP_DATA_IN		:	in	DATA_STEREO_ARR_T;
				DSP_DATA_OUT	:	out	DATA_STEREO_ARR_T);
	end component;
	
	constant DATA_ZERO : std_logic_vector(I2S_RES - 1 downto 0) := (others => '0');
	
	-- clock tree
	signal SYS_CLK_TREE : unsigned(SYS_CLK_TREE_LEN - 1 downto 0);
	signal M_CLK : std_logic;
	signal ADC_SYS_CLK : std_logic;
	signal DAC_SYS_CLK : std_logic;
	signal DISP_SYS_CLK : std_logic;
	signal BTN_SYS_CLK : std_logic;
	
	-- clock pll
	signal PLL_RESET : std_logic;
	signal PLL_LOCK : std_logic;
	
	-- audio
	signal I2S_CLK_TREE : unsigned(I2S_CLK_TREE_LEN - 1 downto 0);
	signal I2S_SCLK : std_logic;
	signal I2S_BCLK : std_logic;
	signal I2S_WCLK : std_logic;
	signal I2S_DATA_IN : std_logic;
	signal I2S_DATA_OUT : std_logic;
	signal I2S_READY : std_logic;
	
	-- display driver
	signal FX_MODE : unsigned(FX_MODE_COUNT - 1 downto 0);
	signal FX_DIR : std_logic;
	signal DRV_RUN	: std_logic;
	signal DRV_BUSY : std_logic;
	
	-- buttons
	signal BTN_LEFT_OUT_H : std_logic;
	signal BTN_RIGHT_OUT_H : std_logic;
	signal BTN_CLR : std_logic;
	signal BTN_LEFT_OUT_SR : std_logic_vector(1 downto 0);
	signal BTN_RIGHT_OUT_SR : std_logic_vector(1 downto 0);
	signal BTN_LEFT_OUT : std_logic;
	signal BTN_RIGHT_OUT : std_logic;
	
	-- dsp --
	
	signal DSP_DATA_IN : DATA_STEREO_ARR_T;
	signal DSP_DATA_OUT : DATA_STEREO_ARR_T;
	
	signal DSP_DATA_NORM_IN : DATA_STEREO_ARR_T;
	signal DSP_DATA_NORM_OUT : DATA_STEREO_ARR_T;
	
	signal DSP_DATA_CLEAN_IN : DATA_STEREO_ARR_T;
	signal DSP_DATA_CLEAN_OUT : DATA_STEREO_ARR_T;
	
	signal DSP_DATA_REVERB_IN : DATA_STEREO_ARR_T;
	signal DSP_DATA_REVERB_OUT : DATA_STEREO_ARR_T;
	
	signal DSP_DATA_ECHO_IN : DATA_STEREO_ARR_T;
	signal DSP_DATA_ECHO_OUT : DATA_STEREO_ARR_T;

begin

	GSR0 : GSR port map (GSR => RESET);

	OSC0: OSCH
		generic map (NOM_FREQ => "38.00")
		port 	map (STDBY => '0', OSC => M_CLK, SEDSTDBY => OPEN);
		
	ADC0: adc_controller
		port map (	MRST_N		=>	RESET,
					ADC_CLK		=>	ADC_SYS_CLK,
					ADC_CLIPL_P	=>	ADC_CLIPL_P,
					ADC_SM		=>	ADC_SM,
					ADC_FMT1	=>	ADC_FMT1,
					ADC_FMT0	=>	ADC_FMT0,
					ADC_FS2		=>	ADC_FS2,
					ADC_FS1		=>	ADC_FS1,
					ADC_FS0		=>	ADC_FS0,
					ADC_HPFD_P	=>	ADC_HPFD_P,
					ADC_READY	=>	I2S_READY,
					ADC_RST_N	=>	ADC_RST_N	);
					
	DAC0: dac_controller
		port map (	MRST_N		=>	I2S_READY,
					DAC_CLK		=>	DAC_SYS_CLK,
					DAC_I2C_SCL	=>	DAC_I2C_SCL,
					DAC_I2C_SDA	=>	DAC_I2C_SDA,
					DAC_ZEROL_P	=>	DAC_ZEROL_P,
					DAC_RST_N	=>	DAC_RST_N	);
	
	I2SS: i2s_slave
		generic map ( PCM_RES => I2S_RES,
					  PCM_OS => I2S_S_OS,
					  PCM_FMT => I2S_S_FMT )
		port map (	MRST_N => RESET,
					BCLK => I2S_BCLK,
					WCLK => I2S_WCLK,
					DATA => I2S_DATA_IN,
					DATA_IN_L => DSP_DATA_IN(0),
					DATA_IN_R => DSP_DATA_IN(1),
					READY => OPEN);
	
	I2SM: i2s_master
		generic map ( PCM_RES => I2S_RES,
					  PCM_OS => I2S_S_OS,
					  PCM_FMT => I2S_S_FMT )
		port map (  MRST_N => RESET,
					BCLK => I2S_BCLK,
					WCLK => I2S_WCLK,
					DATA => I2S_DATA_OUT,
					DATA_OUT_L => DSP_DATA_OUT(0),
					DATA_OUT_R => DSP_DATA_OUT(1),
					READY => OPEN );	

	DD0: display_driver
		port map (	SDA  	=> DISP_I2C_SDA,
					SCL  	=> DISP_I2C_SCL,
					FX_MODE	=> FX_MODE,
					RUN  	=> DRV_RUN,
					RESET	=> RESET,
					BUSY 	=> DRV_BUSY,
					DLY_CLK	=> BTN_SYS_CLK,
					MCLK 	=> DISP_SYS_CLK	);
					
	BTN0: input_handler
		port map (	IN_BUTTON 	=> BTN_LEFT_IN,
					CLR_BUTTON  => BTN_CLR,
					OUT_BUTTON  => BTN_LEFT_OUT_H,
					CLK_BUTTON	=> BTN_SYS_CLK	);
					
	BTN1: input_handler
		port map (	IN_BUTTON 	=> BTN_RIGHT_IN,
					CLR_BUTTON  => BTN_CLR,
					OUT_BUTTON  => BTN_RIGHT_OUT_H,
					CLK_BUTTON	=> BTN_SYS_CLK	);
	
	NORM: dsp_normalize
		port map (	DSP_RST_N		=>	RESET,
					I2S_BCLK		=>	I2S_BCLK,
					I2S_WCLK		=>	I2S_WCLK,
					DSP_DATA_IN		=>	DSP_DATA_NORM_IN,
					DSP_DATA_OUT	=>	DSP_DATA_NORM_OUT	);
	
	CLEAN: dsp_clean
		port map (	DSP_RST_N		=>	RESET,
					I2S_BCLK		=>	I2S_BCLK,
					I2S_WCLK		=>	I2S_WCLK,
					DSP_DATA_IN		=>	DSP_DATA_CLEAN_IN,
					DSP_DATA_OUT	=>	DSP_DATA_CLEAN_OUT	);
										
	
	--// system clock distribution //--
	
	ADC_SYS_CLK  <= SYS_CLK_TREE(ADC_CLK_BIT);
	DAC_SYS_CLK  <= SYS_CLK_TREE(DAC_CLK_BIT);
	DISP_SYS_CLK <= SYS_CLK_TREE(DISP_CLK_BIT);
	BTN_SYS_CLK  <= SYS_CLK_TREE(BTN_CLK_BIT);
	
	process(RESET, M_CLK) is
	begin
		if (RESET = '0') then
		
			SYS_CLK_TREE <= (others => '0');
		
		elsif rising_edge(M_CLK) then
		
			SYS_CLK_TREE <= SYS_CLK_TREE + 1;
		
		end if;
	end process;
	
	
	--// audio bus --//
	
	-- provide SCLK to ADC, receive BCLK & WCLK in return
	ADC_SCK <= I2S_SCLK;
	I2S_BCLK <= ADC_BCK;
	I2S_WCLK <= ADC_LRCK;
	I2S_DATA_IN <= ADC_DATA;
	
	-- provide all clocks to DAC
	DAC_SCK <= I2S_SCLK;
	DAC_BCK <= I2S_BCLK;
	DAC_LRCK <= I2S_WCLK;
	DAC_DATA <= I2S_DATA_OUT;
	
	I2S_SCLK <= I2S_CLK_TREE(I2S_SCLK_BIT);
	
	process(RESET, M_CLK) is
	begin
		if (RESET = '0') then
			
			I2S_CLK_TREE <= (others => '0');
		
		elsif falling_edge(M_CLK) then
		
			I2S_CLK_TREE <= I2S_CLK_TREE + 1;
		
		end if;
	end process;
	
	
	-- synchronized button outputs
	BTN_LEFT_OUT <= BTN_LEFT_OUT_SR(BTN_LEFT_OUT_SR'length - 1);
	BTN_RIGHT_OUT <= BTN_RIGHT_OUT_SR(BTN_RIGHT_OUT_SR'length - 1);
	
	-- clear button outputs when display driver active
	BTN_CLR <= DRV_BUSY and RESET;
	
	-- direction of mode cycling
	FX_DIR <= '1' when (BTN_RIGHT_OUT = '1') else
			  '0';
	
	-- run display driver on button press
	DRV_RUN <= (BTN_LEFT_OUT or BTN_RIGHT_OUT) and RESET;
	
	
	-- button output synchronizers for crossing to faster clock domain (1 kHz to 400 kHz)
	process(RESET, DISP_SYS_CLK) is
	begin
		if (RESET = '0') then
		
			BTN_LEFT_OUT_SR <= (others => '0');
			BTN_RIGHT_OUT_SR <= (others => '0');
		
		elsif rising_edge(DISP_SYS_CLK) then
		
			BTN_LEFT_OUT_SR <= BTN_LEFT_OUT_SR(BTN_LEFT_OUT_SR'length - 2 downto 0) & BTN_LEFT_OUT_H;
			BTN_RIGHT_OUT_SR <= BTN_RIGHT_OUT_SR(BTN_RIGHT_OUT_SR'length - 2 downto 0) & BTN_RIGHT_OUT_H;
			
		end if;
	end process;
	
	
	-- cycles to next/previous screen
	process(RESET, DRV_RUN) is
	begin
		if (RESET = '0') then
		
			for i in 0 to FX_MODE_COUNT - 1 loop
				if (i = 0) then
					FX_MODE(i) <= '1';
				else
					FX_MODE(i) <= '0';
				end if;
			end loop;
		
		elsif rising_edge(DRV_RUN) then
			
			if (FX_DIR = '0') then
				FX_MODE <= FX_MODE(FX_MODE'length - 2 downto 0) & FX_MODE(FX_MODE'length - 1);
			else
				FX_MODE <= FX_MODE(0) & FX_MODE(FX_MODE'length - 1 downto 1);
			end if;
			
		end if;
	end process;
	
	
	--// signal path //--
	------------------------------------------------
	DSP_DATA_REVERB_OUT <= (DATA_ZERO, DATA_ZERO);
	DSP_DATA_ECHO_OUT <= (DATA_ZERO, DATA_ZERO);
	------------------------------------------------
	
	DSP_DATA_NORM_IN <= DSP_DATA_IN;
	
	DSP_DATA_CLEAN_IN <= DSP_DATA_NORM_OUT;
	DSP_DATA_REVERB_IN <= DSP_DATA_NORM_OUT;
	DSP_DATA_ECHO_IN <= DSP_DATA_NORM_OUT;
	
	--with (FX_MODE) select
	--DSP_DATA_OUT <=	DSP_DATA_CLEAN_OUT		when "001",
					--DSP_DATA_REVERB_OUT		when "010",
					--DSP_DATA_ECHO_OUT		when "100",
					--(DATA_ZERO, DATA_ZERO)	when others;
	
	DSP_DATA_OUT(1) <= DATA_ZERO;
	
	with (FX_MODE) select
	DSP_DATA_OUT(0) <=	DSP_DATA_CLEAN_OUT(0)	when "001",
						DSP_DATA_REVERB_OUT(0)	when "010",
						DSP_DATA_ECHO_OUT(0)	when "100",
						DATA_ZERO				when others;
					

end rtl;