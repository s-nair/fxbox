library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library Machxo2;
use Machxo2.components.all;

library work;
use work.fxbox_pkg.all;

entity dac_controller is
	port (  MRST_N		:	in		std_logic;
			DAC_CLK		:	in		std_logic;
			DAC_I2C_SCL	:	out		std_logic;
			DAC_I2C_SDA	:	out		std_logic;
			DAC_ZEROL_P	:	in		std_logic;
			DAC_RST_N	:	out		std_logic);
end dac_controller;

architecture rtl of dac_controller is

	component i2c_master is
		port (	SDA,SCL		:	out		std_logic;
				RUN			:	in		std_logic;
				BUSY		:	out		std_logic;
				ERROR		:	out		std_logic;
				ADDRESS		:	in		std_logic_vector(6 downto 0);
				READ_EN		:	in		std_logic;
				COMMAND		:	in		std_logic_vector(7 downto 0);
				DATA_WRITE	:	in		std_logic_vector(7 downto 0);
				DATA_READ	:	out		std_logic_vector(7 downto 0);
				NEXT_DATA	:	in		std_logic;
				READY_DATA	:	out		std_logic;
				SCLK		:	in		std_logic);
	end component;

	signal DAC_DGOOD : std_logic;
	signal RST_WAIT_SR : unsigned(DATA_WAIT_LEN - 1 downto 0);
	
	-- I2C
	signal RUN_I2CM : std_logic;
	signal BUSY_I2CM : std_logic;
	signal ERROR_I2CM : std_logic;
	signal ADDR_I2CM : std_logic_vector(7 downto 0);
	signal CMD_I2CM : std_logic_vector(7 downto 0);
	signal DATA_W_I2CM : std_logic_vector(7 downto 0);
	signal DATA_R_I2CM : std_logic_vector(7 downto 0);
	signal NEXT_I2CM : std_logic;
	signal READY_I2CM : std_logic;
	
	signal CLR_RUN_N : std_logic;

begin

	I2CM1 : i2c_master
		port map (	SDA			=> DAC_I2C_SDA,
					SCL			=> DAC_I2C_SCL,
					RUN			=> RUN_I2CM,
					BUSY		=> BUSY_I2CM,
					ERROR		=> ERROR_I2CM,
					ADDRESS		=> ADDR_I2CM(7 downto 1),
					READ_EN		=> ADDR_I2CM(0),
					COMMAND		=> CMD_I2CM,
					DATA_WRITE	=> DATA_W_I2CM,
					DATA_READ	=> DATA_R_I2CM,
					NEXT_DATA	=> NEXT_I2CM,
					READY_DATA	=> READY_I2CM,
					SCLK		=> DAC_CLK );
					
					
	-- I2C initialization
	ADDR_I2CM <= x"98";
	CMD_I2CM <= x"12";
	DATA_W_I2CM <= x"20";
	NEXT_I2CM <= '0';
	
	-- reset shift register
	DAC_RST_N <= MRST_N;	
	
	-- data good shift register
	DAC_DGOOD <= RST_WAIT_SR(RST_WAIT_SR'length - 1);
	
	process(MRST_N, DAC_CLK) is
	begin
	
		if (MRST_N = '0') then
		
			RST_WAIT_SR <= (others => '0');
		
		elsif rising_edge(DAC_CLK) then
		
			RST_WAIT_SR <= RST_WAIT_SR(RST_WAIT_SR'length - 2 downto 0) & '1';
		
		end if;
		
	end process;
	
	
	-- write audio data format register (register 18 = 0x30, FMT[6:4] = 011)
	CLR_RUN_N <= '0' when (MRST_N = '0' or READY_I2CM = '1') else
				 '1';
	
	process(CLR_RUN_N, DAC_DGOOD) is
	begin
	
		if (CLR_RUN_N = '0') then
		
			RUN_I2CM <= '0';
			
		elsif rising_edge(DAC_DGOOD) then
		
			RUN_I2CM <= '1';
			
		end if;
		
	end process;

end rtl;