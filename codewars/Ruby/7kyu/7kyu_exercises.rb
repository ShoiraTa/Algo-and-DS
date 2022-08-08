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