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