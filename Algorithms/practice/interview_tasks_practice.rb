require 'pry'
# ALGOS ---------------------------------------------
# 1. binary SEARCH,
def binary_search(arr, elem)
  left = 0
  right = arr.length

  while left <= right
    mid = (left + right) / 2
    return mid if arr[mid] == elem
    if arr[mid] < elem
      left = mid+1
    else
      right = mid - 1
    end
  end
  -1
end
p "binary_search: #{binary_search([1, 3, 4, 5, 7, 8], 8)}"

# 2. bubble sort
def bubble_sort(arr)
  swapped = true
  while swapped
    swapped = false
    (0...arr.length-1).each do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] =  arr[i+1], arr[i] 
        swapped = true
      end
    end

  end
  arr
end
p "bubble_sort: #{bubble_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 3. selection sort
def selection_sort(arr)
  (0...arr.length - 1).each do |i|
    current = i
    (i+1...arr.length).each do |j|
      current = j if arr[current] > arr[j]
    end
    arr[i], arr[current] = arr[current], arr[i] if i != current
  end
  arr
end
p "selection_sort: #{selection_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 4. insertion sort
def insertion_sort(arr)
  (0...arr.length).each do |i|
    while i.positive?
      break if arr[i] > arr[i-1]
      arr[i], arr[i-1] =  arr[i-1], arr[i]
      i-=1
    end
  end
  arr
end

p "insertion_sort: #{insertion_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 5. merge sort
def merge(arr1, arr2)
  arr = []
  while !arr1.empty? && !arr2.empty?
    if arr1[0] < arr2[0]
      arr << arr1.shift
    else
      arr << arr2.shift
    end
  end
  arr.concat(arr1).concat(arr2)
end

def split(arr)
  return arr if arr.length <= 1
  mid = arr.length / 2
  left= split(arr.slice(0...mid))
  right= split(arr.slice(mid...arr.length))
  merge(left, right)
end

p "split: #{split([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 6. quick sort
def quick_sort(arr)
  return arr if arr.length <= 1
  pivot = arr.shift
  left, right = arr.partition{|el| el < pivot}
  quick_sort(left) + [pivot] + quick_sort(right)
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

  arr = [num1]
  return arr if n == 1
  arr << num2
  (n - 2).times do 
    num3 = num1 + num2
    arr << num3 
    num1, num2 = num2, num3
  end
  arr
end
p "fibonacci_sequence: #{fibonacci_sequence(7)}"

# 3
def find_duplicate_num(arr)
  hash = {}
  arr.each do |num|
    return num if hash[num]
    hash[num] = true
  end
end
p "find_duplicate_num: #{find_duplicate_num([1, 2, 3, 4, 5, 6, 7, 7, 8, 9, 10])}"

# 4
def find_missing_num(arr)
  (0...arr.length).each do |i|
    return arr[i]+1 if arr[i]+1 != arr[i+1]
  end
end
p "find_missing_num: #{find_missing_num([1, 2, 4])}"

# 5
def is_palindrome(s)
  normalized = s.downcase.gsub(/[^a-z]/)
  s.reverse == s
end
p "is_palindrome: #{is_palindrome("aba")}" #back and forth reads the same for alphabetical + num chars

# 6
def rotate(nums, k)
 k = k % nums.length
 nums.prepend(*nums.pop(k))
end
p "rotate: #{rotate([1,2,3,4,5], 3)}"

# 7
def max_profit(prices)
  buy = prices[0]
  profit = 0
  (1...prices.length).each do |price|
    if prices[price] < buy
      buy = prices[price]
    elsif (prices[price] - buy) > profit
      profit = prices[price] - buy
    end
  end
  profit
end
p "max_profit: #{max_profit([7,1,5,1])}"

# 8
def longest_common_prefix(strs)
  prefix = strs[0]
  (1...strs.length).each do |str_i|
    while strs[str_i].index(prefix) != 0
      prefix = prefix[0...-1]
      return nil if prefix.empty?
    end
  end
  prefix
end
p "longest_common_prefix: #{longest_common_prefix(["flower","flow","flight"])}"

# 9
def first_bad_version_binary_search(n)
  left = 0
  right = n
  while left < right
    mid = left+right
    if is_bad(mid)
      right = mid
    else
      left = mid+1
    end
  end
  left
end

#10
def is_anagram(s, t)
  hash = Hash.new(0)
  s.chars.each{|char| hash[char] +=1 }
  t.chars.each{|char| hash[char] -=1 }
  hash.each_value.all?{|val| val == 0}
end
p "is_anagram: #{is_anagram("abab", "baba")}"

#11
def is_subsequence_two_pointer(s, t)
 
end
p "is_subsequence_two_pointer: #{is_subsequence_two_pointer("abc", "ahbgdc")}"

# 12
def factorial(n)
  (1...n+1).inject(1){|acc, i| acc*=i }
end
p "factorial: #{factorial(5) }" #=> 5 = 5 * 4 * 3 * 2 * 1 = 120}

# 13
def is_power_of_three(n)
  return false if n <= 0
  while n % 3 == 0
    n /= 3
  end
  n == 1
end
p "is_power_of_three: #{is_power_of_three(27) }" # 27 = 3 * 3 * 3

# 14
def add_binary(a, b)
  (a.to_i(2) + b.to_i(2)).to_s(2)
end
p "add_binary: #{add_binary('1010', '1011') }" # "10101"
