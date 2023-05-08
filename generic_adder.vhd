library ieee;
use ieee.std_logic_1164.all;

entity generic_adder is	
	generic(
		g_BIT_WIDTH	: integer := 8
	);
	port(
		i_value_a 	: in std_logic_vector(g_BIT_WIDTH-1 downto 0);
		i_value_b	: in std_logic_vector(g_BIT_WIDTH-1 downto 0);
		o_result	: out std_logic_vector(g_BIT_WIDTH downto 0)
	);
end generic_adder;

architecture arch of generic_adder is

-- 	### Components ##################################################
	component full_adder is
	port(
			i_bit_a		: in std_logic;					
			i_bit_b		: in std_logic;
			i_carry		: in std_logic;
			o_carry		: out std_logic;
			o_sum		: out std_logic
	);
	end component;
	
-- 	### Signals #####################################################
	signal w_sum		: std_logic_vector(g_BIT_WIDTH-1 downto 0);
	signal w_carry		: std_logic_vector(g_BIT_WIDTH downto 0);
	
--	### begin #######################################################
begin

	w_carry(0) <= '0';
	
	generate_full_adders : for ii in 0 to g_BIT_WIDTH-1 generate
		fa_ii : full_adder
			port map(
			i_bit_a 	=>	i_value_a(ii),				
			i_bit_b 	=>	i_value_a(ii),
			i_carry 	=>  w_carry(ii),
			o_carry 	=>	w_carry(ii+1),
			o_sum 		=>	w_sum(ii)
			);
	end generate generate_full_adders;
		
	o_result <= w_carry(g_BIT_WIDTH) & w_sum;
	
end arch;