require 'pry'

# 1
def factorial(n); end
p "factorial: #{factorial(5)}" #=> 5 = 5 * 4 * 3 * 2 * 1 = 120}

# 2
def is_power_of_three(n); end
p "is_power_of_three: #{is_power_of_three(27)}" # 27 = 33

# 3
def add_binary(a, b); end
p "add_binary: #{add_binary('1010', '1011')}" # "10101"

# 4
def is_valid_parentheses(_s)
  mapping = { '}' => '{', ']' => '[', ')' => '(' }
end
p "is_valid_parentheses: #{is_valid_parentheses('()[]{}')}"
