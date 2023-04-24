# frozen_string_literal: true

# How many consecutive numbers are needed?
#  Create the function consecutive(arr) that takes an array of integers and return the minimum number of integers needed to make the contents of arr consecutive from the lowest number to the highest number.
# For example:
# If arr contains [4, 8, 6] then the output should be 2 because two numbers need to be added to the array (5 and 7) to make it a consecutive array of numbers from 4 to 8. Numbers in arr will be unique.
def consecutive(arr)
  return 0 if arr.empty?

  (arr.max - arr.min) + 1 - arr.size
end

# Write a function that can return the smallest value of an array or the index of that value. The function's 2nd parameter will tell whether it should return the value or the index.
# Assume the first parameter will always be an array filled with at least 1 number and no duplicates. Assume the second parameter will be a string holding one of two values: 'value' and 'index'.
def find_smallest(numbers, to_return)
  to_return == 'value' ? numbers.min : numbers.index(numbers.min)
end

# Your car is old, it breaks easily. The shock absorbers are gone and you think it can handle about 15 more bumps before it dies totally.
# Unfortunately for you, your drive is very bumpy! Given a string showing either flat road (_) or bumps (n). If you are able to reach home safely by encountering 15 bumps or less, return Woohoo!, otherwise return Car Dea
# Bumps in the Road
def bump(x)
  x.count('n') > 15 ?  'Car Dead' : 'Woohoo!'
end

# Gordon Ramsay shouts. He shouts and swears. There may be something wrong with him.
# Anyway, you will be given a string of four words. Your job is to turn them in to Gordon language.
# Rules:
# Obviously the words should be Caps, Every word should end with '!!!!', Any letter 'a' or 'A' should become '@', Any other vowel should become '*'.
# Hells Kitchen
def gordon(a)
  "#{a.upcase.gsub(/\s+/, '!!!! ').gsub(/A/, '@').gsub(/[AEIOU]/, '*')}!!!!"
end

# Move every letter in the provided string forward 10 letters through the alphabet.
#
# If it goes past 'z', start again at 'a'.
# Input will be a string with length > 0.
# Move 10
def move_ten(st)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  st.chars.reduce('') do |final, char|
    index = alphabet.index(char)
    index + 10 <= alphabet.length - 1 ? final.concat(alphabet[index + 10]) : final.concat(alphabet[(alphabet.length - (index + 10)).abs])
  end
end

# Simple, given a string of words, return the length of the shortest word(s).
# String will never be empty and you do not need to account for different data types.
# Shortest Word
def find_short(s)
  s.split(' ').min_by(&:length).length
end

# Given an array of numbers (in string format), you must return a string. The numbers correspond to the letters of the alphabet in reverse order: a=26, z=1 etc. You should also account for '!', '?' and ' ' that are represented by '27', '28' and '29' respectively.
# All inputs will be valid.
# Numbers to Letters
def switcher(arr)
  a = ' ?!abcdefghijklmnopqrstuvwxyz'
  arr.map { |val| a.reverse[val.to_i - 1] }.join('')
end

# Given a string made up of letters a, b, and/or c, switch the position of letters a and b (change a to b and vice versa). Leave any incidence of c untouched.
# Example:
# 'acb' --> 'bca'
# 'aabacbaa' --> 'bbabcabb'
# Switcheroo
def switcheroo(x)
  x.gsub(/[ab]/, 'a' => 'b', 'b' => 'a')
  # x.tr('ab', 'ba')
end

# Take 2 strings s1 and s2 including only letters from a to z. Return a new sorted string, the longest possible, containing distinct letters - each taken only once - coming from s1 or s2.
# Two to One
def longest(a1, a2)
  a1.concat(a2).chars.uniq.sort.join
end

# Remove vovels
# Disemvowel Trolls
def disemvowel(str)
  str.delete 'aeiouAEIOU'
  # str.gsub /[aeiou]/i, ''
end

# Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.
# For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.
# Sum of two lowest positive integers
def sum_two_smallest_numbers(numbers)
  numbers.min(2).sum
  #  numbers.min(2).reduce(:+)
end

# Given an array of ones and zeroes, convert the equivalent binary value to an integer.
# Eg: [0, 0, 0, 1] is treated as 0001 which is the binary representation of 1.
# Ones and Zeros
def binary_array_to_number(arr)
  arr.join.to_i(2)
end

# Write a function that returns both the minimum and maximum number of the given list/array.
# The highest profit wins!
def min_max(lst)
  lst.minmax
end

# Write a function which takes a list of strings and returns each line prepended by the correct number.
# Testing 1-2-3
def number(lines)
  lines.map.with_index(1) { |n, i| "#{i}: #{n}" }
end

# In this kata you get the start number and the end number of a region and should return the count of all numbers except numbers with a 5 in it. The start and the end number are both inclusive!
# Don't give me five!
def dont_give_me_five(s, e)
  (s..e).to_a.delete_if { |n| n.to_s.match(/5/) }.count
end

# 12 Aug 2022
# Highest and Lowest
def high_and_low(numbers)
  numbers.split(' ').map(&:to_i).minmax.reverse.join(' ')
end

# Descending Order
def descending_order(n)
  return n unless n.to_s.length > 1

  n.to_s.chars.sort.reverse.join.to_i
end

# You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.
# Get the Middle Character
def get_middle(s)
  middle = (s.length / 2).floor
  s.length.odd? ? s[middle] : s[middle - 1..middle]
end

# List Filtering
def filter_list(l)
  l.reject { |char| char.is_a? String }
end

# 13 Aug 2022 //////////////////////////////
# square every digit of a number and concatenate them.
# Square Every Digit
def square_digits(num)
  num.digits.map { |n| n**2 }.reverse.join.to_i
end

# An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram.
# Isograms
def is_isogram(string)
  !string.downcase.split('').uniq!
end

# Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.
# =e# Exes and Ohs
def XO(str)
  str.count('xX') == str.count('oO')
end

#    you'll have to capitalize each word, check out how contractions are expected to be in the example below.
# Jaden Casing Strings
class String
  def toJadenCase
    split.map(&:capitalize).join(' ')
  end
end

# Beginner Series #3 Sum of Numbers
def get_sum(a, b)
  c, d = [a, b].minmax
  (a..b).digits.reduce(:+)
end

# If a name has exactly 4 letters in it, you can be sure that it has to be a friend of yours! Otherwise, you can be sure he's not..
# Friend or Foe?
def friend(friends)
  friends.reject { |friend| friend.length > 4 }
end

#   In a small town the population is p0 = 1000 at the beginning of a year. The population regularly increases by 2 percent per year and moreover 50 new inhabitants per year come to live in the town. How many years does the town need to see its population greater or equal to p = 1200 inhabitants?
# Growth of a Population
def nb_year(p0, percent, aug, p)
  pop = p0
  year = 0
  while pop < p
    year += 1
    pop = pop + (pop * (percent.to_f.round(2) / 100)) + aug
  end
  year
end

# 14aug

# Find the missing number in the array
# You are given an array of positive numbers from 1 to n, such that all numbers from 1 to n are present except one number x. You have to find x. The input array is not sorted. Look at the below array and give it a try before checking the solution.
#
# [3, 7, 1, 2, 8, 4, 5] n = 8 missing number = 6

def findNum(arr)
  sorted = arr.sort
  withNum = (sorted[0]..sorted[-1]).to_a
  (withNum - sorted)[0]
end

# The Collatz Conjecture states that for any natural number n, if n is even, divide it by 2. If n is odd, multiply it by 3 and add 1. If you repeat the process continuously for n, n will eventually reach 1.
# [20, 10, 5, 16, 8, 4, 2, 1]

# Collatz Conjecture Length
def collatz(n)
  count = 1
  while n > 1
    n = n.even? ? (n / 2) : ((n * 3) + 1)
    count += 1
  end
  count
end

# Odd or Even?
def odd_or_even(array)
  array.reduce(0, :+).even? ? 'even' : 'odd'
end

# Form The Minimum
def min_value(digits)
  digits.uniq.sort.join.to_i
end

# Product Array (Array Series #5)
def product_array(numbers)
  numbers.each_with_index.reduce([]) do |final, (_n, i)|
    nums = numbers.reject.with_index { |_n, ind| ind == i }
    final << nums.reduce(:*)
  end

  # prod = numbers.reduce(:*)
  # numbers.map { |x| prod / x }
end

# Product Of Maximums Of Array (Array Series #2)
def max_product(numbers, size)
  # numbers.sort.reverse.first(size).reduce(:*)
  numbers.max(size).reduce(:*)
end
