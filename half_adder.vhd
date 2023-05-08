library ieee;
use ieee.std_logic-1164.all;




-- ##########################
-- ### entity declaration ###
-- ##########################
-- define inputs and outputs here

entity half_adder is 
	port(														
			i_a 		: in std_logic;								
			i_b 		: in std_logic;								
			o_solution 	: out std_logic;											
			o_carry		: out std_logic
		);
end half_adder;

-- #########################
-- ### architecture body ###
-- #########################
-- describe the entity here

architecture rtl of half_adder is
		
begin
	o_solution 	<= 	i_a xor i_b;
	o_carry 	<=	i_a and i_b;
end rtl;