library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity testbench is
end testbench;

architecture tb of testbench is

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
	
	constant SCLK_P		:	time := 2500 ns;
	
	signal	SDA			:	std_logic;
	signal	SCL			:	std_logic;
	signal	RUN			:	std_logic := '0';
	signal	BUSY		:	std_logic;
	signal	ERROR		:	std_logic;
	signal	ADDRESS		:	std_logic_vector(6 downto 0);
	signal	READ_EN		:	std_logic;
	signal	DATA_WRITE	:	std_logic_vector(7 downto 0);
	signal	DATA_READ	:	std_logic_vector(7 downto 0);
	signal	NEXT_DATA	:	std_logic;
	signal	READY_DATA	:	std_logic;
	signal	SCLK		:	std_logic	:=	'0';

begin

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
					SCLK		=>	SCLK);
					
					
	ADDRESS <= "0111100";
	READ_EN <= '0';
	DATA_WRITE <= x"14";
	NEXT_DATA <= '0';
	
	RUN <= '1';
	
	SCLK <= not SCLK after SCLK_P / 2;
						
	--process is
	--begin

	--wait until BUSY = '0';
	
	--DATA_WRITE <= x"AB";
	--NEXT_DATA <= '0';
	--RUN <= '1';
	
	--wait for 5 us;
	
	--RUN <= '0';
	
	--wait until rising_edge(READY_DATA);
	--wait until rising_edge(SCLK);
	--NEXT_DATA <= '1';
	--DATA_WRITE <= x"CD";
	--wait until falling_edge(READY_DATA);
	--NEXT_DATA <= '0';
	
	--wait;
	--end process;

end tb;