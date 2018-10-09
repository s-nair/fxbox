-- component declaration -----------------------------
	--component i2c_master is
		--port (	SDA,SCL		:	out		std_logic;
				--RUN			:	in		std_logic;
				--BUSY		:	out		std_logic;
				--ERROR		:	out		std_logic;
				--ADDRESS		:	in		std_logic_vector(6 downto 0);
				--READ_EN		:	in		std_logic;
				--COMMAND		:	in		std_logic_vector(7 downto 0);
				--DATA_WRITE	:	in		std_logic_vector(7 downto 0);
				--DATA_READ	:	out		std_logic_vector(7 downto 0);
				--NEXT_DATA	:	in		std_logic;
				--READY_DATA	:	out		std_logic;
				--SCLK		:	in		std_logic);
	--end component;
	
	--signal RUN_I2CM, BUSY_I2CM, ERROR_I2CM : std_logic;
	--signal ADDR_I2CM : std_logic_vector(7 downto 0);
	--signal CMD_I2CM : std_logic_vector(7 downto 0);
	--signal DATA_W_I2CM, DATA_W_I2CM_R, DATA_R_I2CM : std_logic_vector(7 downto 0);
	--signal NEXT_I2CM, READY_I2CM : std_logic;
------------------------------------------------------
-- component instantiation ---------------------------
	--I2CM0 : i2c_master
		--port map (	SDA			=> SDA,
					--SCL			=> SCL,
					--RUN			=> RUN_I2CM,
					--BUSY		=> BUSY_I2CM,
					--ERROR		=> ERROR_I2CM,
					--ADDRESS		=> ADDR_I2CM(7 downto 1),
					--READ_EN		=> ADDR_I2CM(0),
					--COMMAND		=> CMD_I2CM,
					--DATA_WRITE	=> DATA_W_I2CM,
					--DATA_READ	=> DATA_R_I2CM,
					--NEXT_DATA	=> NEXT_I2CM,
					--READY_DATA	=> READY_I2CM,
					--SCLK		=> MCLK );
------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_misc.all;

library Machxo2;
use Machxo2.components.all;

library work;
use work.fxbox_pkg.all;

entity i2c_master is
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
end i2c_master;

architecture rtl of i2c_master is

	component clock_tree is
		generic	(	DIV_LEN	:	natural);
		port	(	M_CLOCK	:	in	std_logic;
					LOAD	:	in	std_logic;
					D		:	in	unsigned;
					CLOCK	:	out	unsigned);
	end component;
	
	signal CLOCK_CT : unsigned(DIV_LEN_CT - 1 downto 0);
	signal LOAD : std_logic;
	signal D_IN : unsigned(DIV_LEN_CT - 1 downto 0);

	type state_i2cm_t is (READY, START0, START1, START2, TSFR_ADDR, ACK0, TSFR_CMD, ACK1, TSFR_DATA, ACK2, STOP0, STOP1, STOP2, PON_WAIT1);
	signal PS_I2CM : state_i2cm_t;
	
	signal SCL_EN: std_logic;
	signal SCL_R: std_logic;
	signal SDA_R: std_logic;
	signal ADDR_BYTE_R : std_logic_vector(0 to 7);
	signal ADDR_BIT_R : std_logic;
	signal CMD_BYTE_R : std_logic_vector(0 to 7);
	signal CMD_BIT_R : std_logic;
	signal DATA_BYTE_R : std_logic_vector(0 to 7);
	signal DATA_BIT_R : std_logic;

	signal NS_NEXT_DATA : state_i2cm_t;
	
	signal BIT_PULSE : std_logic;
	signal BYTE_PULSE : std_logic;
	signal LOAD_PULSE : std_logic;
	
	signal LOAD_ADDR : std_logic;
	signal LOAD_DATA : std_logic_vector(1 downto 0);

begin

	CT0 : clock_tree
		generic map	(	DIV_LEN	=>	DIV_LEN_CT)
		port map	(	M_CLOCK	=>	SCLK,
						LOAD	=>	LOAD,
						D		=>	D_IN,
						CLOCK	=>	CLOCK_CT);
						
	
	ERROR <= '0';
	DATA_READ <= (others => '0');
	
	with (SCL_EN) select
	SCL_R <= '1' when '0',
		     CLOCK_CT(1) when others;
	
	with (SCL_R) select
	SCL <= '0' when '0',
		   'H' when others;
	
	with (SDA_R) select
	SDA <= '0' when '0',
		   'H' when others;
		   
	with (CLOCK_CT(1 downto 0)) select
	BIT_PULSE <= '1' when "01",
				 '0' when others;
	
	with (CLOCK_CT) select
	BYTE_PULSE <= '1' when "11111",
				  '0' when others;
				  
	with (CLOCK_CT) select
	LOAD_PULSE <= '1' when "00001",
				  '0' when others;
				  
	with (NEXT_DATA) select
	NS_NEXT_DATA <= TSFR_DATA when '1',
					STOP0 when others;
					
	with (PS_I2CM) select
	LOAD_ADDR <= '1' when START0,
				 '0' when others;
					
	
	-- registers for data and address bits, based on counter
	process(SCLK) is
	begin
	
		if rising_edge(SCLK) then
			ADDR_BIT_R	<= ADDR_BYTE_R(to_integer(CLOCK_CT(4 downto 2)));
			CMD_BIT_R	<= CMD_BYTE_R(to_integer(CLOCK_CT(4 downto 2)));
			DATA_BIT_R	<= DATA_BYTE_R(to_integer(CLOCK_CT(4 downto 2)));
		end if;
	
	end process;
	
	
	-- load address + read/write byte
	process(LOAD_ADDR) is
	begin

		if rising_edge(LOAD_ADDR) then

			ADDR_BYTE_R(0 to 6) <= ADDRESS;
			ADDR_BYTE_R(7) <= READ_EN;
		
		end if;
	
	end process;
	
	
	-- load command byte
	process(LOAD_ADDR) is
	begin

		if rising_edge(LOAD_ADDR) then
		
			CMD_BYTE_R <= COMMAND;
		
		end if;
	
	end process;
	
	
	-- load data byte register
	process(LOAD_DATA(1)) is
	begin

		if rising_edge(LOAD_DATA(1)) then
		
			DATA_BYTE_R <= DATA_WRITE;
			
		end if;
	
	end process;
	
	
	-- counter load register
	process(SCLK) is
	begin

		if rising_edge(SCLK) then
			
			case (PS_I2CM) is
			
			when READY	=>	LOAD <= '1';
			when ACK0	=>	LOAD <= LOAD_PULSE;
			when ACK1	=>	LOAD <= LOAD_PULSE;
			when ACK2	=>	LOAD <= LOAD_PULSE;
			when STOP2	=>	LOAD <= '1';
			when others	=>	LOAD <= '0';
			
			end case;
		
		end if;
	
	end process;
	
	
	-- load data trigger shift registers
	process(SCLK) is
	begin

		if rising_edge(SCLK) then
		
			LOAD_DATA <= LOAD_DATA(0) & LOAD;
		
		end if;
	
	end process;

	
	-- counter load data register
	process(SCLK) is
	begin

		if rising_edge(SCLK) then
	
			case (PS_I2CM) is
			
			when ACK0		=>	D_IN <= "11111";
			when ACK1		=>	D_IN <= "11111";
			when ACK2		=>	D_IN <= "11111";
			when others		=>	D_IN <= "11000";
			
			end case;
			
		end if;
	
	end process;
	
	
	-- SCL enable
	process(SCLK) is
	begin

		if rising_edge(SCLK) then
	
			case (PS_I2CM) is
			
			when START2		=>	SCL_EN <= '1';
			when TSFR_ADDR	=>	SCL_EN <= '1';
			when TSFR_CMD	=>	SCL_EN <= '1';
			when TSFR_DATA	=>	SCL_EN <= '1';
			when ACK0 		=>	SCL_EN <= '1';
			when ACK1 		=>	SCL_EN <= '1';
			when ACK2		=>	SCL_EN <= '1';
			when STOP0		=>	SCL_EN <= '1';
			when others		=>	SCL_EN <= '0';
			
			end case;
			
		end if;
	
	end process;
	
	
	-- busy register
	process(SCLK) is
	begin
	
		if rising_edge(SCLK) then
	
			case (PS_I2CM) is
			
			when READY	=>	BUSY <= '0';
			when others	=>	BUSY <= '1';

			end case;
			
		end if;
	
	end process;
	
	
	-- data ready register for signalling end of byte
	process(SCLK) is
	begin
	
		if rising_edge(SCLK) then
	
			case (PS_I2CM) is
			
			when ACK1	=>	READY_DATA <= '1';
			when ACK2	=>	READY_DATA <= '1';
			when others	=>	READY_DATA <= '0';

			end case;
			
		end if;
	
	end process;
	
	
	-- SDA writes, clocked by BIT_PULSEs
	process(BIT_PULSE) is
	begin

		if rising_edge(BIT_PULSE) then
		
			case (PS_I2CM) is
			
			when READY		=>	SDA_R <= '1';
			when START0		=>	SDA_R <= '1';
			when START1		=>	SDA_R <= '0';
			when START2		=>	SDA_R <= '0';
			when TSFR_ADDR	=>	SDA_R <= ADDR_BIT_R;
			when TSFR_CMD	=>	SDA_R <= CMD_BIT_R;
			when TSFR_DATA	=>	SDA_R <= DATA_BIT_R;
			-- ** CHANGE TO BI-DIRECTIONAL (TRI-STATE BUFFER) **
			--when ACK0		=>	SDA_R <= '1';
			--when ACK1		=>	SDA_R <= '1';
			--when ACK2		=>	SDA_R <= '1';
			when ACK0		=>	SDA_R <= '0';
			when ACK1		=>	SDA_R <= '0';
			when ACK2		=>	SDA_R <= '0';
			when STOP0		=>	SDA_R <= '0';
			when STOP1		=>	SDA_R <= '1';
			when STOP2		=>	SDA_R <= '1';
			when others		=>	SDA_R <= '1';
			
			end case;
		
		end if;
	
	end process;
	
	
	-- main state machine for I2C write
	process(SCLK) is
	begin

		if rising_edge(SCLK) then
		
			case (PS_I2CM) is
			
			when READY =>	
			
				if (RUN = '1') then
						 PS_I2CM <= START0;
					else PS_I2CM <= READY;
				end if;
				
			when START0 =>
			
				if (BIT_PULSE = '1') then
						 PS_I2CM <= START1;
					else PS_I2CM <= START0;
				end if;
			
			when START1 =>
			
				if (BIT_PULSE = '1') then
						 PS_I2CM <= START2;
					else PS_I2CM <= START1;
				end if;
			
			when START2 =>
			
				if (BYTE_PULSE = '1') then
						 PS_I2CM <= TSFR_ADDR;
					else PS_I2CM <= START2;
				end if;
			
			when TSFR_ADDR =>
			
				if (BYTE_PULSE = '1') then
						 PS_I2CM <= ACK0;
					else PS_I2CM <= TSFR_ADDR;
				end if;
			
			when ACK0 =>
			
				if (BYTE_PULSE = '1') then
						 PS_I2CM <= TSFR_CMD;
					else PS_I2CM <= ACK0;
				end if;
				
			when TSFR_CMD =>
			
				if (BYTE_PULSE = '1') then
						 PS_I2CM <= ACK1;
					else PS_I2CM <= TSFR_CMD;
				end if;
				
			when ACK1 =>
			
				if (BYTE_PULSE = '1') then
						 PS_I2CM <= TSFR_DATA;
					else PS_I2CM <= ACK1;
				end if;
			
			when TSFR_DATA =>
			
				if (BYTE_PULSE = '1') then
						 PS_I2CM <= ACK2;
					else PS_I2CM <= TSFR_DATA;
				end if;
			
			when ACK2 =>
			
				if (BYTE_PULSE = '1') then
						 PS_I2CM <= NS_NEXT_DATA;
					else PS_I2CM <= ACK2;
				end if;
			
			when STOP0 =>
			
				if (BIT_PULSE = '1') then
						 PS_I2CM <= STOP1;
					else PS_I2CM <= STOP0;
				end if;
			
			when STOP1 =>
			
				if (BIT_PULSE = '1') then
						 PS_I2CM <= STOP2;
					else PS_I2CM <= STOP1;
				end if;
			
			when STOP2 => PS_I2CM <= READY;
			
			when others => PS_I2CM <= READY;
			
			end case;
		
		end if;
	
	end process;
	

end rtl;