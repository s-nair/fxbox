-- VHDL testbench template generated by SCUBA Diamond (64-bit) 3.10.0.111.2
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

use IEEE.math_real.all;

use IEEE.numeric_std.all;

entity tb is
end entity tb;


architecture test of tb is 

    component screen_reverb
        port (Address : in std_logic_vector(6 downto 0); 
        OutClock: in std_logic; OutClockEn: in std_logic; 
        Reset: in std_logic; Q : out std_logic_vector(7 downto 0)
    );
    end component;

    signal Address : std_logic_vector(6 downto 0) := (others => '0');
    signal OutClock: std_logic := '0';
    signal OutClockEn: std_logic := '0';
    signal Reset: std_logic := '0';
    signal Q : std_logic_vector(7 downto 0);
begin
    u1 : screen_reverb
        port map (Address => Address, OutClock => OutClock, OutClockEn => OutClockEn, 
            Reset => Reset, Q => Q
        );

    process

    begin
      Address <= (others => '0') ;
      wait for 100 ns;
      wait until Reset = '0';
      for i in 0 to 131 loop
        wait until OutClock'event and OutClock = '1';
        Address <= Address + '1' after 1 ns;
      end loop;
      wait;
    end process;

    OutClock <= not OutClock after 5.00 ns;

    process

    begin
      OutClockEn <= '0' ;
      wait for 100 ns;
      wait until Reset = '0';
      OutClockEn <= '1' ;
      wait;
    end process;

    process

    begin
      Reset <= '1' ;
      wait for 100 ns;
      Reset <= '0' ;
      wait;
    end process;

end architecture test;
