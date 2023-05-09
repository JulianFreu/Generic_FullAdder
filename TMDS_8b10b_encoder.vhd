library ieee;
use ieee.std_logic_1164.all;
-- use ieee.numeric_std.all;
-- use ieee.math_real.all;

entity TMDS_8b10b_encoder is
    port (
        i_clk           : in std_logic;
        i_data_enable   : in std_logic;
        i_C0            : in std_logic;
        i_C1            : in std_logic;
        i_data          : in std_logic_vector(7 downto 0);
        o_data          : out std_logic_vector(9 downto 0)
    );
end TMDS_8b10b_encoder;

architecture rtl of TMDS_8b10b_encoder is
    signal r_cnt_disparity     : integer range 0 to 8;
    signal w_int_data          : std_logic_vector(9 downto 0);

begin

process 1 : encode 
if data_enable 
    encode stuff
    if more 1s
        Xnor all
        set bit 9 to 0
    else
        XOR all
        set bit 9 to 1

else
    ctrl stuff
end if;

process 2: maybe invert
    if r_cnt_disparity(t-1) is 0 or r_cnt_disparity(t) is 0
        
    elsif disparity worsens
        invert
        set bit 10 to 1
    else
        dont invert
        set bit 10 to 0 
end architecture;
