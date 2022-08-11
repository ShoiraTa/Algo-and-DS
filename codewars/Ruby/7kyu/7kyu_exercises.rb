# How many consecutive numbers are needed?
=begin
 Create the function consecutive(arr) that takes an array of integers and return the minimum number of integers needed to make the contents of arr consecutive from the lowest number to the highest number.
For example:
If arr contains [4, 8, 6] then the output should be 2 because two numbers need to be added to the array (5 and 7) to make it a consecutive array of numbers from 4 to 8. Numbers in arr will be unique.
=end
def consecutive(arr)
  return 0 if arr.empty?
  (arr.max - arr.min)+1 - arr.size
end

=begin
Write a function that can return the smallest value of an array or the index of that value. The function's 2nd parameter will tell whether it should return the value or the index.
Assume the first parameter will always be an array filled with at least 1 number and no duplicates. Assume the second parameter will be a string holding one of two values: 'value' and 'index'.
=end
def find_smallest(numbers,to_return)
  to_return == 'value' ? numbers.min : numbers.index(numbers.min)
end

=begin
Your car is old, it breaks easily. The shock absorbers are gone and you think it can handle about 15 more bumps before it dies totally.
Unfortunately for you, your drive is very bumpy! Given a string showing either flat road (_) or bumps (n). If you are able to reach home safely by encountering 15 bumps or less, return Woohoo!, otherwise return Car Dea
=end
# Bumps in the Road
def bump(x)
  x.count('n') > 15 ?  "Car Dead" : "Woohoo!"
end 

=begin
Gordon Ramsay shouts. He shouts and swears. There may be something wrong with him.
Anyway, you will be given a string of four words. Your job is to turn them in to Gordon language.
Rules:
Obviously the words should be Caps, Every word should end with '!!!!', Any letter 'a' or 'A' should become '@', Any other vowel should become '*'.
=end
# Hells Kitchen
def gordon(a)
  a.upcase.gsub(/\s+/, '!!!! ').gsub(/A/,'@').gsub(/[AEIOU]/, '*') + '!!!!'
end

=begin
Move every letter in the provided string forward 10 letters through the alphabet.

If it goes past 'z', start again at 'a'.
Input will be a string with length > 0.
=end
# Move 10
def move_ten (st)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  st.chars.reduce('') do |final, char|
    index = alphabet.index(char)
    index+10 <= alphabet.length-1 ? final.concat(alphabet[index+10]): final.concat(alphabet[((alphabet.length) - (index+10)).abs])   
  end
end

=begin
Simple, given a string of words, return the length of the shortest word(s).
String will never be empty and you do not need to account for different data types.
=end
# Shortest Word
def find_short(s)
  s.split(' ').sort_by(&:length)[0].length
end

=begin
Given an array of numbers (in string format), you must return a string. The numbers correspond to the letters of the alphabet in reverse order: a=26, z=1 etc. You should also account for '!', '?' and ' ' that are represented by '27', '28' and '29' respectively.
All inputs will be valid.
=end
# Numbers to Letters
def switcher(arr)
  a = " ?!abcdefghijklmnopqrstuvwxyz"
  arr.map{|val| a.reverse[(val.to_i) -1] }.join('')
end

=begin
Given a string made up of letters a, b, and/or c, switch the position of letters a and b (change a to b and vice versa). Leave any incidence of c untouched.
Example:
'acb' --> 'bca'
'aabacbaa' --> 'bbabcabb'
=end
# Switcheroo
def switcheroo(x) 
  x.gsub(/[ab]/, 'a' => 'b', 'b'=> 'a')
  # x.tr('ab', 'ba')
end


=begin
Take 2 strings s1 and s2 including only letters from a to z. Return a new sorted string, the longest possible, containing distinct letters - each taken only once - coming from s1 or s2.
=end
# Two to One
def longest(a1, a2)
  a1.concat(a2).chars.uniq.sort.join
end

=begin
Remove vovels
=end
# Disemvowel Trolls
def disemvowel(str)
  str.delete"aeiouAEIOU"
  # str.gsub /[aeiou]/i, ''
end

=begin
Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.
For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.
=end
# Sum of two lowest positive integers
def sum_two_smallest_numbers(numbers)
   numbers.min(2).sum
  #  numbers.min(2).reduce(:+)
end


=begin
Given an array of ones and zeroes, convert the equivalent binary value to an integer.
Eg: [0, 0, 0, 1] is treated as 0001 which is the binary representation of 1.
=end
# Ones and Zeros
def binary_array_to_number(arr)
  arr.join.to_i(2)
end 

=begin
Write a function that returns both the minimum and maximum number of the given list/array.
=end
# The highest profit wins!
def min_max(lst)
  lst.minmax
end


=begin
Write a function which takes a list of strings and returns each line prepended by the correct number.
=end
# Testing 1-2-3
def number lines
  lines.map.with_index(1){|n, i| "#{i}: #{n}"}
end


=begin
In this kata you get the start number and the end number of a region and should return the count of all numbers except numbers with a 5 in it. The start and the end number are both inclusive!
=end
# Don't give me five!
def dont_give_me_five(s,e)
  (s..e).to_a.delete_if{|n| n.to_s.match(/5/)}.count
end

=begin
=end