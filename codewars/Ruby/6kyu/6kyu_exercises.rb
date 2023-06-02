require 'pry'

# frozen_string_literal: true

# Completethesolutionsothat it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').
# Split Strings
def split(str)
  str << '_' if str.size.odd?
  str.scan(/../)
end

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Multiples of 3 or 5

def multiples(number)
  # final = 0
  # (1...number).each { |num| final+= num if num % 3 == 0 || num % 5 == 0 }
  # final
  (1...number).select { |n| (n % 3).zero? || (n % 5).zero? }.inject(:+)
end

# Given an array of integers, find the one that appears an odd number of times.

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
  n = n.digits.sum while n.digits.length > 1
  n
end

# Bit Counting
def count_bits(n)
  n.to_s(2).scan(/1/).size
end

# Create Phone Number
def create_phone_number(numbers)
  format = '(xxx) xxx-xxxx'
  numbers.each.with_index(1) { |n, _i| format.sub!('x', n.to_s) }
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
    "#{names[0]}, #{names[1]} and  #{names.size - 2} others like this"
  end
end

# Find The Parity Outlier
def find_outlier(integers)
  odd, even = integers.partition(&:odd?)
  odd.length > 1 ? even[0] : odd[0]
end

# Counting Duplicates
def duplicate_count(text)
  return false if text.nil?

  resHash = Hash.new(0)
  text.downcase.chars.each { |c| resHash[c] += 1 }
  resHash.count { |_key, val| val > 1 }

  # ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end

# 17aug
# Your order, please
def order(words)
  words.split.sort_by { |w| w[/\d/] }.join(' ')
end

# Convert string to camel case
def to_camel_case(str)
  str.split(/-|_/).map.with_index { |s, i| i.zero? ? s : s.capitalize }.join
end

# Find the missed number
def getLengthOfMissingArray(array_of_arrays)
  return 0 if array_of_arrays.nil? || array_of_arrays.empty?

  nums = array_of_arrays.reduce([]) { |final, arr| final << arr.length }
  firstNum = nums.min === 2 ? 1 : nums.min
  res = ((firstNum..nums.max).to_a - nums.sort)[0]
  res || 0
end

# Estimating Amounts of Subsets
def est_subsets(arr)
  arr = arr[0].instance_of?(String) ? (1..arr.uniq.length).to_a : (1..arr.uniq.length).to_a
  res = -1
  (0..(arr.length)).each do |i|
    res += arr.combination(i).to_a.size
  end
  res
end

# Duplicate Encoder
def duplicate_encode(word)
  word.downcase.each_char.map { |char| char = word.downcase.count(char) > 1 ? ')' : '(' }.join
end

# Take a Ten Minutes Walk
def is_valid_walk(walk)
  def get_counts(chars, walk)
    arr = chars.map { |char| walk.count(char) }
    arr.uniq.size <= 1
  end

  walk.size <= 10 && get_counts(walk.uniq, walk) ? true : false
end

def persistence(n)
  count = 0
  while n.digits.length > 1
    n = n.digits.inject(&:*)
    count += 1
  end
  count
end

def alphabet_position(text)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  text.downcase.strip.chars.map do |character|
    alphabet.index(character) && (alphabet.index(character) + 1)
  end.compact.join(' ')
end

# Number of permutations without repetitions
def perms(element)
  (1..element.to_s.chars.uniq.length).to_a.inject(:*)
end

# Arrh, grabscrab!
def grabscrab(_anagram, _dictionary)
  s.upcase.split(';').map { |arr| arr.split(':').rotate.join(', ') }.sort.join(')(').insert(0, '(') + ')'
end

# 21Aug
# String tops
def tops(msg)
  chars = msg.chars
  res = ''
  count = 1
  while chars.length.positive?
    res << chars[count] if chars[count]
    chars.slice!(0, count)
    count += 4
  end
  res.reverse
end

# Check if two words are isomorphic to each other
def isomorph(a, b)
  return false unless a.size == b.size

  hash = (a.chars.zip b.chars).to_h
end

def pangram?(string)
  #  string.downcase.delete(" \t\r\n.").chars.uniq.size >= 26
  ('a'..'z').all? { |x| string.downcase.include?(x) }
end

# Find the unique number
def find_uniq(arr)
  arr.uniq.select { |num| arr.count(num) == 1 }.first
end

def find_missing_letter(arr)
  ((arr[0]...arr[-1]).to_a - arr).first
end

def deep_count(a)
  return 0 if a.empty?

  count = a.count
  a.select { |val| val.is_a?(Array) }.each do |val|
    count += deep_count(val)
  end
  count
end

def reduce(fraction)
  a, b = fraction
  a = gcd(a, b)
  [(fraction[0] / a), (fraction[1] / a)]
end

def gcd(a, b)
  return a if b.zero?

  gcd(b, a % b)
end

def reverser(number, reversed_number = 0)
  return (reversed_number * 10) + number if number < 10

  last_digit = number % 10
  remaining_digits = number / 10
  reversed_number = (reversed_number * 10) + last_digit
  reverser(remaining_digits, reversed_number)
end

def beggars(values, n, arr = [])
  return arr if n.zero?

  indexes_to_del = []
  sum = 0
  values.each_with_index do |element, index|
    if (index % n).zero?
      sum += element
      indexes_to_del.unshift(index)
    end
  end
  indexes_to_del.each { |index| values.delete_at(index) }

  arr.push(sum)

  beggars(values, n - 1, arr)
end

# High score table
class HighScoreTable
  def initialize(limit)
    @limit = limit
    @scores = []
  end
  attr_reader :scores

  def reset
    @scores = []
  end

  def update(score)
    @scores.push(score)
    @scores = @scores.sort { |x, y| y <=> x }
    @scores.pop if @scores.length > @limit
  end
end

def spacey(array, new_array = [])
  return 0 if array.empty?

  new_array.push(array.first)
  new_array[-1] = [new_array[-1], (new_array[-2])].reverse.join if new_array[-2]

  spacey(array.drop(1), new_array)
  new_array
end

def solve(arr)
  arr_hash = {}

  arr.each do |el|
    arr_hash[el] ||= 0
    arr_hash[el] += 1
  end
  arr_hash= arr_hash.sort_by{|key, value| [-value, key]}.to_h
  sorted_arr = []
  arr_hash.each {|key, value| sorted_arr += [key] * value}

  sorted_arr
end

p solve([2,3,5,3,7,9,5,3,7])
# [3,3,3,5,5,7,7,2,9]