library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_misc.all;

library Machxo2;
use Machxo2.components.all;

library work;
use work.fxbox_pkg.all;

entity display_driver is
	port (	SDA,SCL :	out std_logic;
			RUN		:	in	std_logic;
			RESET	:	in	std_logic;
			BUSY	:	out	std_logic;
			FX_MODE :	in	unsigned(FX_MODE_COUNT - 1 downto 0);
			DLY_CLK	:	in	std_logic;
			MCLK	:	in	std_logic);
end display_driver;

architecture rtl of display_driver is

	component i2c_controller is
		port (	SDA,SCL 		:	out std_logic;
				RUN				:	in	std_logic;
				RESET			:	in	std_logic;
				BUSY			:	out	std_logic;
				INIT			:	in	std_logic;
				RESET_BUF		:	in	std_logic;
				WRITE_EN_BUF	:	in	std_logic;
				WRITE_ADDR_BUF	:	in	std_logic_vector(9 downto 0);
				WRITE_DATA_BUF	:	in	std_logic_vector(7 downto 0);
				MCLK			:	in	std_logic);
	end component;

	component ascii_table is
		port (
			Address: in  std_logic_vector(6 downto 0); 
			OutClock: in  std_logic; 
			OutClockEn: in  std_logic; 
			Reset: in  std_logic; 
			Q: out  std_logic_vector(63 downto 0));
	end component;
	
	component screen_clean is
		port (
			Address: in  std_logic_vector(6 downto 0); 
			OutClock: in  std_logic; 
			OutClockEn: in  std_logic; 
			Reset: in  std_logic; 
			Q: out  std_logic_vector(7 downto 0));
	end component;
	
	component screen_reverb is
		port (
			Address: in  std_logic_vector(6 downto 0); 
			OutClock: in  std_logic; 
			OutClockEn: in  std_logic; 
			Reset: in  std_logic; 
			Q: out  std_logic_vector(7 downto 0));
	end component;
	
	component screen_echo is
		port (
			Address: in  std_logic_vector(6 downto 0); 
			OutClock: in  std_logic; 
			OutClockEn: in  std_logic; 
			Reset: in  std_logic; 
			Q: out  std_logic_vector(7 downto 0));
	end component;
	
	component clock_tree is
		generic	(	DIV_LEN	:	natural);
		port	(	M_CLOCK	:	in	std_logic;
					LOAD	:	in	std_logic;
					D		:	in	unsigned;
					CLOCK	:	out	unsigned);
	end component;
	
	signal CTR_DRV : unsigned(CTR_LEN_DRV - 1 downto 0);
	signal LOAD_CTR_DRV : std_logic;
	signal LOAD_CTR_D_DRV : unsigned(CTR_LEN_DRV - 1 downto 0);
	
	signal ADDR_ASCII : std_logic_vector(6 downto 0);
	signal DATA_ASCII : std_logic_vector(63 downto 0);
	signal READ_EN_ASCII : std_logic;
	signal RESET_ASCII : std_logic;
	
	signal ADDR_SCREEN : std_logic_vector(6 downto 0);
	signal DATA_SCREEN : std_logic_vector(7 downto 0);
	signal READ_EN_SCREEN : std_logic;
	signal RESET_SCREEN : std_logic;
	
	signal DATA_CLEAN : std_logic_vector(7 downto 0);
	signal DATA_REVERB : std_logic_vector(7 downto 0);
	signal DATA_ECHO : std_logic_vector(7 downto 0);
	
	signal RUN_I2CC : std_logic;
	signal BUSY_I2CC : std_logic;
	signal INIT_I2CC : std_logic;
	signal RESET_BUF : std_logic;
	signal WRITE_EN_BUF : std_logic;
	signal WRITE_ADDR_BUF : std_logic_vector(9 downto 0);
	signal WRITE_DATA_BUF : std_logic_vector(7 downto 0);
	
	signal CTR_MCLK : std_logic;
	signal CLK_GTA, CLK_GTB : std_logic;
	signal CLK_GT : std_logic_vector(1 downto 0);
	signal DELAY_SR : std_logic_vector(1 downto 0);
	
	type state_drv_t is (PON_WAIT, INIT, INIT_WAIT, READY, LOAD_SETUP, LOAD, SEND_SETUP, SEND, SEND_WAIT);
	signal PS_DRV : state_drv_t;
	
	signal RUN_DRV : std_logic;
	signal PULSE_EOF_DRV : std_logic;
	
	signal FX_MODE_R : unsigned(FX_MODE_COUNT - 1 downto 0);
	
	signal PON_DELAY_SR : std_logic_vector(PON_DLY_MS - 1 downto 0);
	
begin

	I2CC0 : i2c_controller
		port map (	SDA				=>	SDA,
					SCL				=>	SCL,
					RUN				=>	RUN_I2CC,
					RESET			=>	PON_DELAY_SR(PON_DELAY_SR'length - 1),
					BUSY			=>	BUSY_I2CC,
					INIT			=>	INIT_I2CC,
					RESET_BUF		=>	RESET_BUF,
					WRITE_EN_BUF	=>	WRITE_EN_BUF,
					WRITE_ADDR_BUF	=>	WRITE_ADDR_BUF,
					WRITE_DATA_BUF	=>	WRITE_DATA_BUF,
					MCLK			=>	MCLK	);
	
	ROM0 : ascii_table
        port map (Address => ADDR_ASCII, OutClock => MCLK, OutClockEn => READ_EN_ASCII, 
            Reset => RESET_ASCII, Q => DATA_ASCII
        );
		
	ROM1 : screen_clean
        port map (Address => ADDR_SCREEN, OutClock => MCLK, OutClockEn => READ_EN_SCREEN, 
            Reset => RESET_SCREEN, Q => DATA_CLEAN
        );
		
	ROM2 : screen_reverb
        port map (Address => ADDR_SCREEN, OutClock => MCLK, OutClockEn => READ_EN_SCREEN, 
            Reset => RESET_SCREEN, Q => DATA_REVERB
        );
		
	ROM3 : screen_echo
        port map (Address => ADDR_SCREEN, OutClock => MCLK, OutClockEn => READ_EN_SCREEN, 
            Reset => RESET_SCREEN, Q => DATA_ECHO
        );
		
	CTR0 : clock_tree
		generic map	(	DIV_LEN	=>	CTR_LEN_DRV)
		port map	(	M_CLOCK	=>	CTR_MCLK,
						LOAD	=>	LOAD_CTR_DRV,
						D		=>	LOAD_CTR_D_DRV,
						CLOCK	=>	CTR_DRV);
						
	
	RESET_BUF <= '0';
	RESET_ASCII <= '0';
	RESET_SCREEN <= '0';
	
	READ_EN_ASCII <= '1';
	READ_EN_SCREEN <= '1';
						
	-- select screen for specified mode (one-hot encoding)
	with (FX_MODE_R) select
	DATA_SCREEN <=	DATA_ECHO		when "100",
					DATA_REVERB		when "010",
					DATA_CLEAN		when "001",
					(others => '0')	when others;

	-- end of frame pulse signal
	PULSE_EOF_DRV <= and_reduce(std_logic_vector(CTR_DRV));
	
	-- gates run signal if I2C controller is busy
	with (BUSY_I2CC) select
	RUN_DRV <= RUN when '0',
			   '0' when others;
	
	-- counter to Screen ROM ADDR & frame buffer ADDR wiring
	ADDR_SCREEN <= std_logic_vector(CTR_DRV(9 downto 3));
	WRITE_ADDR_BUF <= std_logic_vector(CTR_DRV);
	
	-- DATA ROM Q to ASCII ROM ADDR wiring
	ADDR_ASCII <= DATA_SCREEN(6 downto 0);
	
	-- ASCII ROM to frame buffer wiring
	with (CTR_DRV(2 downto 0)) select
	WRITE_DATA_BUF <= DATA_ASCII(63 downto 56) when "111",
					  DATA_ASCII(55 downto 48) when "110",
					  DATA_ASCII(47 downto 40) when "101",
					  DATA_ASCII(39 downto 32) when "100",
					  DATA_ASCII(31 downto 24) when "011",
					  DATA_ASCII(23 downto 16) when "010",
					  DATA_ASCII(15 downto  8) when "001",
					  DATA_ASCII( 7 downto  0) when "000",
					  (others => '0') when others;
	
	-- clock for driving counter, with gating
	with (CLK_GT) select
	CTR_MCLK <= '1' when "10",
				MCLK when others;
	
	-- clock gating for counter
	CLK_GT <= CLK_GTA & CLK_GTB;
	CLK_GTB <= DELAY_SR(DELAY_SR'length - 1);
	
	
	-- power on delay shift registers
	process(RESET, DLY_CLK) is
	begin
	
		if (RESET = '0') then
		
			PON_DELAY_SR <= (others => '0');
			
		elsif rising_edge(DLY_CLK) then

			PON_DELAY_SR <= PON_DELAY_SR(PON_DELAY_SR'length - 2 downto 0) & '1';
		
		end if;
	
	end process;
	
	
	-- clock gating pulse & triggers shift register delay
	process(MCLK) is
	begin
	
		if rising_edge(MCLK) then
		
			case (CTR_DRV(2 downto 0)) is
			
			when "111" =>	CLK_GTA <= '1';
			when "000" =>	CLK_GTA <= '1';
			when others =>	CLK_GTA <= '0';
			
			end case;
		
		end if;
	
	end process;
	
	
	-- delay shift register for gating counter
	process(MCLK) is
	begin
	
		if rising_edge(MCLK) then
			DELAY_SR <= DELAY_SR(DELAY_SR'length - 2 downto 0) & CLK_GTA;
		end if;
	
	end process;
	
	
	-- mode register
	process(RESET, MCLK) is
	begin
	
		if (RESET = '0') then
		
			FX_MODE_R <= "001";
		
		elsif rising_edge(MCLK) then
		
			--if (RUN_DRV = '1') then
				FX_MODE_R <= FX_MODE;
			--end if;
			
		end if;
	
	end process;
	
	
	-- RAM write enable register
	process(MCLK) is
	begin
	
		if rising_edge(MCLK) then
		
			case (PS_DRV) is
			
			when LOAD_SETUP	=> WRITE_EN_BUF <= '1';
			when LOAD		=> WRITE_EN_BUF <= '1';	
			when others		=> WRITE_EN_BUF <= '0';
			
			end case;
		
		end if;
	
	end process;
	
	
	-- counter load registers
	process(MCLK) is
	begin
	
		if rising_edge(MCLK) then
		
			case (PS_DRV) is
			when LOAD =>

				LOAD_CTR_DRV <= '0';
				LOAD_CTR_D_DRV <= CTR_DRV;
				
			when others =>

				LOAD_CTR_DRV <= '1';
				LOAD_CTR_D_DRV <= (others => '0');
				
			end case;
		
		end if;
	
	end process;
	
	
	-- I2C run register
	process(MCLK) is
	begin
		
		if (RESET = '0') then
		
			RUN_I2CC <= '0';
		
		elsif rising_edge(MCLK) then
		
			case (PS_DRV) is
			
			when INIT		=>	RUN_I2CC <= '1';
			when SEND		=>	RUN_I2CC <= '1';
			when others		=>	RUN_I2CC <= '0';
			
			end case;
		
		end if;
	
	end process;
	
	
	-- busy output register
	process(MCLK) is
	begin
	
		if rising_edge(MCLK) then
		
			case (PS_DRV) is
			
			when READY	=>	BUSY <= '0';
			when others	=>	BUSY <= '1';
			
			end case;
		
		end if;
	
	end process;
	
	
	-- I2C init register
	process(MCLK) is
	begin
	
		if rising_edge(MCLK) then
		
			case (PS_DRV) is
			
			when PON_WAIT	=>	INIT_I2CC <= '1';
			when INIT		=>	INIT_I2CC <= '1';
			when INIT_WAIT	=>	INIT_I2CC <= '1';
			when others		=>	INIT_I2CC <= '0';
			
			end case;
		
		end if;
	
	end process;
	
	
	-- main state machine for display driver
	process(RESET, MCLK) is
	begin
	
		if (RESET = '0') then
		
			PS_DRV <= PON_WAIT;
		
		elsif rising_edge(MCLK) then
		
			case (PS_DRV) is
			
			when PON_WAIT =>
			
				if (PON_DELAY_SR(PON_DELAY_SR'length - 1) = '1') then
						 PS_DRV <= INIT;
					else PS_DRV <= PON_WAIT;
				end if;
			
			when INIT =>
			
				if (BUSY_I2CC = '1') then
						 PS_DRV <= INIT_WAIT;
					else PS_DRV <= INIT;
				end if;
			
			when INIT_WAIT =>
									
				if (BUSY_I2CC = '0') then
						 PS_DRV <= LOAD_SETUP;
					else PS_DRV <= INIT_WAIT;
				end if;
			
			when READY =>
								
				if (RUN_DRV = '1') then
						 PS_DRV <= LOAD_SETUP;
					else PS_DRV <= READY;
				end if;
			
			when LOAD_SETUP	=>	PS_DRV <= LOAD;
			
			when LOAD =>
							   
				if (PULSE_EOF_DRV = '1') then
						 PS_DRV <= SEND_SETUP;
					else PS_DRV <= LOAD;
				end if;
			
			when SEND_SETUP	=>	PS_DRV <= SEND;
			
			when SEND =>
							   
				if (BUSY_I2CC = '1') then
						 PS_DRV <= SEND_WAIT;
					else PS_DRV <= SEND;
				end if;
			
			when SEND_WAIT =>
									
				if (BUSY_I2CC = '0') then
						 PS_DRV <= READY;
					else PS_DRV <= SEND_WAIT;
				end if;
			
			when others =>	PS_DRV <= INIT;
			
			end case;
		
		end if;
	
	end process;

end rtl;