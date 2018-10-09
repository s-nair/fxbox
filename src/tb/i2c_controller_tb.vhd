library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity testbench is
end testbench;

architecture tb of testbench is

	component i2c_controller_ram is
		port (	SDA,SCL 		:	out std_logic;
				RUN				:	in	std_logic;
				RESET			:	in	std_logic;
				BUSY			:	out	std_logic;
				RESET_BUF		:	in	std_logic;
				WRITE_EN_BUF	:	in	std_logic;
				WRITE_ADDR_BUF	:	in	std_logic_vector(9 downto 0);
				WRITE_DATA_BUF	:	in	std_logic_vector(7 downto 0);
				MCLK			:	in	std_logic);
	end component;

	constant MCLK_P		:	time := 2500 ns;

	signal SDA,SCL : std_logic;
	signal RUN	: std_logic;
	signal RESET : std_logic;
	signal BUSY : std_logic;
	signal RESET_BUF : std_logic;
	signal WRITE_EN_BUF : std_logic;
	signal WRITE_ADDR_BUF : std_logic_vector(9 downto 0);
	signal WRITE_DATA_BUF : std_logic_vector(7 downto 0);
	signal MCLK : std_logic := '0';

begin

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
					MCLK 			=> MCLK	);

	MCLK <= not MCLK after MCLK_P / 2;
	
	RESET_BUF <= '0';
	WRITE_EN_BUF <= '0';
	WRITE_ADDR_BUF <= (others => '0');
	WRITE_DATA_BUF <= (others => '0');

	RUN <= '0';
	
	process is
	begin
	
	RESET <= '0';
	
	wait for 100 ns;
	
	RESET <= '1';
	
	wait;
	end process;

end tb;