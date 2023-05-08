library ieee;
use ieee.std_logic - 1164.all;
-- ##########################
-- ### entity declaration ###
-- ##########################
-- define inputs and outputs here

entity full_adder is
  port (
    i_bit_a : in std_logic;
    i_bit_b : in std_logic;
    i_carry : in std_logic;
    o_carry : out std_logic;
    o_sum : out std_logic;
  );
end full_adder;

-- #########################
-- ### architecture body ###
-- #########################
-- describe the entity here

architecture rtl of full_adder is

  -- Declarations
  -- components declarations
  component half_adder is
    port (
      i_a : in std_logic;
      i_b : in std_logic;
      o_solution : out std_logic;
      o_carry : out std_logic
    );
  end component half_adder;

  -- signal declarations
  signal x : std_logic;
  signal y : std_logic;
  signal z : std_logic;

begin
  ha1 : half_adder is
  port map(
    i_a => i_bit_a,
    i_b => i_bit_b,
    o_solution => z,
    o_carry => x
  );

  ha2 : half_adder is
  port map(
    i_a => i_carry,
    i_b => x,
    o_solution => y,
    o_carry => o_sum
  );

  o_carry <= y or z;

end rtl;