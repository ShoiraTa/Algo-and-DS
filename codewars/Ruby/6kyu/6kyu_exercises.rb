=begin
Completethesolutionsothat it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').
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
  format = '(xxx) xxx-xxxx';
  numbers.each.with_index(1) {|n, i| format.sub!('x', n.to_s )}
  format
end


# 16 Aug
# Stop gninnipS My sdroW!

def spin_words(string)
  # string.split(' ').map {|word| word.length >=5 ? word.reverse : word  }.join(' ')
  string.gsub(/\w{5,}/, &:reverse)
end


# Who likes it?
def likes(names)
  return 'no one likes this' if names.empty?
  case names.size  
    when 1 
      "#{names[0]} likes this"
    when 2
      "#{names[0]} and #{names[1]} like this"
    when 3
      "#{names[0]}, #{names[1]} and #{names[2]} others like this"
    else
      "#{names[0]}, #{names[1]} and  #{names.size-2} others like this"
  end
end

# Find The Parity Outlier 
def find_outlier(integers)
  odd, even = integers.partition{|n| n.odd? }
  odd.length > 1 ? even[0] : odd[0]
end


# Counting Duplicates
def duplicate_count(text)
  return false if text.nil?
  resHash = Hash.new(0)
  text.downcase.split('').each { |c| resHash[c] += 1 }
  resHash.count{|key, val| val > 1}

  # ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end

# 17aug
# Your order, please
def order(words)
  words.split.sort_by{|w| w[/\d/]}.join(' ')
end


# Convert string to camel case
def to_camel_case(str)
  str.split(/-|_/).map.with_index{|s, i|  i == 0 ? s : s.capitalize }.join
end


# Find the missed number
def getLengthOfMissingArray(array_of_arrays)
  return 0   if array_of_arrays.nil? || array_of_arrays.empty?
  nums = array_of_arrays.reduce([]){|final, arr | final << arr.length}
  firstNum = nums.sort.first  === 2 ? 1 : nums.sort.first 
  res =  (((firstNum..nums.sort.last).to_a)  - (nums.sort))[0]
  return res ?  res : 0
end