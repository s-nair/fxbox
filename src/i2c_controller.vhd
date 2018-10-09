library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_misc.all;

library Machxo2;
use Machxo2.components.all;

library work;
use work.fxbox_pkg.all;

entity i2c_controller is
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
end i2c_controller;

architecture rtl of i2c_controller is

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
	
	component ram_data is
		port (
			WrAddress: in  std_logic_vector(9 downto 0); 
			RdAddress: in  std_logic_vector(9 downto 0); 
			Data: in  std_logic_vector(7 downto 0); 
			WE: in  std_logic; 
			RdClock: in  std_logic; 
			RdClockEn: in  std_logic; 
			Reset: in  std_logic; 
			WrClock: in  std_logic; 
			WrClockEn: in  std_logic; 
			Q: out  std_logic_vector(7 downto 0));
	end component;
	
	component clock_tree is
		generic	(	DIV_LEN	:	natural);
		port	(	M_CLOCK	:	in	std_logic;
					LOAD	:	in	std_logic;
					D		:	in	unsigned;
					CLOCK	:	out	unsigned);
	end component;
	
	signal CTR_BUF : unsigned(CTR_LEN_BUF - 1 downto 0);
	signal LOAD_CTR_BUF : std_logic;
	signal LOAD_CTR_D_BUF : unsigned(CTR_LEN_BUF - 1 downto 0);
	
	--signal READ_ADDR_BUF : std_logic_vector(CTR_LEN_BUF - 1 downto 0);
	signal READ_ADDR_BUF : std_logic_vector(CTR_LEN_BUF - 2 downto 0);
	signal READ_EN_BUF : std_logic;
	signal DATA_OUT_BUF : std_logic_vector(7 downto 0);
	
	signal RUN_I2CM, BUSY_I2CM, ERROR_I2CM : std_logic;
	signal ADDR_I2CM : std_logic_vector(7 downto 0);
	signal CMD_I2CM : std_logic_vector(7 downto 0);
	signal DATA_W_I2CM, DATA_W_I2CM_R, DATA_R_I2CM : std_logic_vector(7 downto 0);
	signal NEXT_I2CM, READY_I2CM : std_logic;
	
	signal PULSE_EOF : std_logic;
	signal PULSE_EOF_INIT : std_logic;
	signal PULSE_EOF_NORMAL : std_logic;
	signal PULSE_LOAD : std_logic;
	signal PULSE_LOAD_INIT : std_logic;
	signal PULSE_LOAD_NORMAL : std_logic;
	
	type state_frame_t is (READY, SEND);
	signal PS_FRAME : state_frame_t;

	signal RUN_GT : std_logic;
	signal INIT_R : std_logic;
	
begin

	I2CM0 : i2c_master
		port map (	SDA			=> SDA,
					SCL			=> SCL,
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
					SCLK		=> MCLK );
		
	BUF0 : ram_data
        port map (WrAddress => WRITE_ADDR_BUF, RdAddress => READ_ADDR_BUF, Data => WRITE_DATA_BUF, 
            WE => WRITE_EN_BUF, RdClock => MCLK, RdClockEn => READ_EN_BUF, Reset => RESET_BUF, 
            WrClock => MCLK, WrClockEn => WRITE_EN_BUF, Q => DATA_OUT_BUF
        );
		
	CTR0 : clock_tree
		generic map	(	DIV_LEN	=>	CTR_LEN_BUF)
		port map	(	M_CLOCK	=>	READY_I2CM,
						LOAD	=>	LOAD_CTR_BUF,
						D		=>	LOAD_CTR_D_BUF,
						CLOCK	=>	CTR_BUF);
	
	
	-- address of the display (CONSTANT)
	ADDR_I2CM <= x"78";
	
	LOAD_CTR_D_BUF <= (others => '0');
	--READ_ADDR_BUF <= std_logic_vector(CTR_BUF);
	READ_ADDR_BUF <= std_logic_vector(CTR_BUF(CTR_LEN_BUF - 2 downto 0));
				 
	-- checks if I2C Master is busy before running
	with (BUSY_I2CM) select
	RUN_GT <= RUN when '0',
			  '0' when others;
			  
	-- command for sending CMD or DATA instructions to display
	with (INIT_R) select
	CMD_I2CM <= x"00" when '1',
				x"40" when others;
	
	with (INIT_R) select
	PULSE_EOF <= PULSE_EOF_INIT when '1',
				 PULSE_EOF_NORMAL when others;
				 
	with (INIT_R) select
	PULSE_LOAD <= PULSE_LOAD_INIT when '1',
				 PULSE_LOAD_NORMAL when others;
				 
				 
	-- init register
	process(MCLK) is
	begin
	
		if rising_edge(MCLK) then
		
			INIT_R <= INIT;
		
		end if;
	
	end process;
	
	-- counter load register
	process(MCLK) is
	begin

		if rising_edge(MCLK) then
			
			case (PS_FRAME) is
			when SEND	=> LOAD_CTR_BUF <= PULSE_LOAD;
			when others	=> LOAD_CTR_BUF <= '1';
			end case;
			
		end if;
	
	end process;
	
	
	-- RAM read enable register
	process(MCLK) is
	begin

		if rising_edge(MCLK) then
			
			case (PS_FRAME) is
			when READY	=> READ_EN_BUF <= '0';
			when others	=> READ_EN_BUF <= '1';
			end case;
			
		end if;
	
	end process;
	
	
	-- run register
	process(RESET, MCLK) is
	begin
	
		if (RESET = '0') then
		
			RUN_I2CM <= '0';
	
		elsif rising_edge(MCLK) then
			
			case (PS_FRAME) is
			when READY	=> RUN_I2CM <= '0';
			when others	=> RUN_I2CM <= '1';
			end case;
			
		end if;
	
	end process;
	
	
	-- busy register
	process(RESET, MCLK) is
	begin
	
		if (RESET = '0') then
		
			BUSY <= '1';
	
		elsif rising_edge(MCLK) then
			
			case (PS_FRAME) is
			when READY	=> BUSY <= BUSY_I2CM;
			when others	=> BUSY <= '1';
			end case;
			
		end if;
	
	end process;
	
	
	-- loads next data into I2C Master
	process(READY_I2CM) is
	begin
	
		if rising_edge(READY_I2CM) then
			
			DATA_W_I2CM <= DATA_OUT_BUF;
			
		end if;
	
	end process;
	
	
	-- more data signal
	process(MCLK) is
	begin
	
		if rising_edge(MCLK) then
		
			case (PS_FRAME) is
			when SEND	=> NEXT_I2CM <= not PULSE_EOF;
			when others	=> NEXT_I2CM <= '0';
			end case;
			
		end if;
	
	end process;
	
	
	-- generates pulses for end-of-frame
	process(PS_FRAME, READY_I2CM) is
	begin
		
		if (PS_FRAME = READY) then
		
			PULSE_EOF_NORMAL	<= '0';
			PULSE_EOF_INIT 		<= '0';
			
			PULSE_LOAD_NORMAL	<= '0';
			PULSE_LOAD_INIT		<= '0';
		
		elsif rising_edge(READY_I2CM) then
			
			case (CTR_BUF) is
				when "10000000000" 	=> PULSE_EOF_NORMAL <= '1';
				when others  	  	=> PULSE_EOF_NORMAL <= '0';
			end case;
			
			case (CTR_BUF(4 downto 0)) is
				when "11111"	  => PULSE_EOF_INIT <= '1';
				when others  	  => PULSE_EOF_INIT <= '0';
			end case;
			
			case (CTR_BUF) is
				when "01111111111" => PULSE_LOAD_NORMAL <= '1';
				when others  	  => PULSE_LOAD_NORMAL <= '0';
			end case;
			
			case (CTR_BUF(4 downto 0)) is
				when "11110"	  => PULSE_LOAD_INIT <= '1';
				when others  	  => PULSE_LOAD_INIT <= '0';
			end case;
			
		end if;
	
	end process;
	
	
	-- main state machine for controller
	process(MCLK) is
	begin

		if rising_edge(MCLK) then
			
			case (PS_FRAME) is
			when READY =>
				
				if (RUN_GT = '1') then
						 PS_FRAME <= SEND;
					else PS_FRAME <= READY;
				end if;
				
			when SEND =>
				
				if (PULSE_EOF = '1') then
						 PS_FRAME <= READY;
					else PS_FRAME <= SEND;
				end if;
			
			when others => PS_FRAME <= READY;
			end case;
			
		end if;
	
	end process;
	

end rtl;