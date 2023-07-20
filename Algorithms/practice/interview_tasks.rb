require 'pry'
# ALGOS ---------------------------------------------
# 1. binary SEARCH,
def binary_search(arr, elem)

end
p "binary_search: #{binary_search([1, 3, 4, 5, 7, 8], 8)}"

# 2. bubble sort
def bubble_sort(arr)

end
p "bubble_sort: #{bubble_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 3. selection sort
def selection_sort(arr)

end
p "selection_sort: #{selection_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 4. insertion sort
def insertion_sort(arr)

end

p "insertion_sort: #{insertion_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 5. merge sort
def merge(arr1, arr2)

end

def split(arr)

end

p "split: #{split([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 6. quick sort
def quick_sort(arr)

end
p "quick_sort: #{quick_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# PRACTICE TASKS ---------------------------------------------
# 1
def is_valid_parentheses(s)
  mapping = {"}" => "{", "]" => "[", ")" => "("}
  stack = []
  s.chars.each do |char|
    if mapping.values.include?(char)
      stack << char
    elsif mapping.keys.include?(char) 
      return false if stack.pop != mapping[char]
    end
  end
  stack.empty?
end
p "is_valid_parentheses: #{is_valid_parentheses("()[]{}")}"

# 2 | 0,1,1,2,3,5,8 | 8=5+3 | 5=2+3 | 3=2+1 |next num is sum of prev 2 nums
def fibonacci_sequence(n)
  num1, num2 = 0, 1
  arr = [n1]
  return arr if n == 1
  (n-2).times do |num|
    n3 = num1 + num2
    arr << n3
    num1, num2 = num2, num3
  end
  arr
end
p "fibonacci_sequence: #{fibonacci_sequence(7)}"

# 3
def find_duplicate_num(arr)
  hash = Hash.new(0)
  arr.each do |n|
    return n if hash[n]
  end
end
p "find_duplicate_num: #{find_duplicate_num([1, 2, 3, 4, 5, 6, 7, 7, 8, 9, 10])}"

# 4
def find_missing_num(arr)
 
end
p "find_missing_num: #{find_missing_num([1, 2, 4])}"

# 5
def is_palindrome(s)

end
p "is_palindrome: #{is_palindrome("aba")}"

# 6
def rotate(nums, k)
 
end
p "rotate: #{rotate([1,2,3,4,5], 3)}"

# 7
def max_profit(prices)

end
p "max_profit: #{max_profit([7,1,5,1])}"

# 8
def longest_common_prefix(strs)
 
end
p "longest_common_prefix: #{longest_common_prefix(["flower","flow","flight"])}"

# 9
def first_bad_version_binary_search(n)
  left = 0
  right = n
  while left < right
    mid = (left + right) / 2
    if is_bad(mid)
      right =  mid
    else
      left =  mid-1
    end
  end
  left
end

#10
def is_anagram(s, t)
  hash = Hash.new(0)
  s.chars.each {|char| hash[char] += 1}
  t.chars.each {|char| hash[char] -= 1}
  hash.each_value.all?{|val| val == 0}
end
p "is_anagram: #{is_anagram("abab", "baba")}"

#11
def is_subsequence_two_pointer(s, t)
 s_p = 0
 t_p = 0
 while s_p< s.length && t_p < t.length
  if s[s_p] == t[t_p]
    s_p+=1
  end
  t_p+=1
 end
 s_p == s.length
end
p "is_subsequence_two_pointer: #{is_subsequence_two_pointer("abc", "ahbgdc")}"

# 12
def factorial(n)
  (1..n).inject(1){|acc, num| acc*=num}
end
p "factorial: #{factorial(5) }" #=> 5 = 5 * 4 * 3 * 2 * 1 = 120}
