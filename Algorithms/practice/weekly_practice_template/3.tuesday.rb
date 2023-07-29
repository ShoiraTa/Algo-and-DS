require 'pry'
# 1
def max_profit(prices); end
p "max_profit: #{max_profit([7, 1, 5, 1])}"

# 2
def longest_common_prefix(strs); end
p "longest_common_prefix: #{longest_common_prefix(%w[flower flow flight])}"

# 3
def first_bad_version_binary_search(n); end

# 4 | 0,1,1,2,3,5,8 | 8=5+3 | 5=2+3 | 3=2+1 |next num is sum of prev 2 nums
def fibonacci_sequence(n); end
p "fibonacci_sequence: #{fibonacci_sequence(7)}"
