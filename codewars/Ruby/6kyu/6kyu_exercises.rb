=begin
Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').
=end
# Split Strings
def split(str)
  str << '_' if str.size.odd? 
  str.scan(/../)
end

=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
=end
# Multiples of 3 or 5

def multiples(number)
  # final = 0
  # (1...number).each { |num| final+= num if num % 3 == 0 || num % 5 == 0 }
  # final
  (1...number).select{|n| n % 3 == 0 || n % 5 == 0}.inject(:+)
end

=begin
Given an array of integers, find the one that appears an odd number of times.
=end

# Find the odd int
def find_it(seq)
  # sorted = seq.sort.each.chunk_while { |curr,nxt| curr==nxt }.map{ |char| char.join(',')}
  # sorted.inject(0) do |final, char| 
  #   final = char.split(',')[0].to_i if char.split(',').length.odd?
  #   final
  # end

  seq.uniq.each do |char| 
    return char if seq.count(char).odd?
  end
end

# Sum of Digits / Digital Root
def digital_root(n)
  while n.digits.length > 1
    n = n.digits.sum
  end
  n
end

# Bit Counting
def count_bits(n)
  n.to_s(2).scan(/1/).size
end

# Create Phone Number
def create_phone_number(numbers)
  format = "(xxx) xxx-xxxx";
  numbers.each.with_index(1) {|n, i| format.sub!('x', n.to_s )}
  format
end