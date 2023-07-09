require 'pry'
# ALGOS ---------------------------------------------
# 1. binary SEARCH,
def binary_search(arr, elem)
  left_i = 0
  right_i = arr.length
  while left_i <= right_i
    mid = (left_i + right_i) / 2
    return mid if arr[mid] == elem

    if arr[mid] < elem
      left_i = mid + 1
    else
      right_i = mid - 1
    end
  end
end
p binary_search([1, 3, 4, 5, 7, 8], 8)

# 2. bubble sort
def bubble_sort(arr)
  swapped = true
  while swapped
    swapped = false
    (0...arr.length-1).each do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
  end
  arr
end
p bubble_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])

# 3. selection sort
def selection_sort(arr)
  (0...arr.length - 1).each do |i|
    min = i
    (i + 1...arr.length).each do |j|
      min = j if arr[j] < arr[min]
    end
    arr[min], arr[i] = arr[i], arr[min] if min != i
  end
  arr
end
 p selection_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])

# 4. insertion sort
def insertion_sort(arr)
  (0...arr.length).each do |i|
    while i.positive?
      break if arr[i-1] < arr[i]
      arr[i-1], arr[i] = arr[i], arr[i-1]
      i -= 1
    end
  end
  arr
end
p insertion_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])

# 5. merge sort
def merge(arr1, arr2)
  arr = []
  while !arr1.empty? && !arr2.empty?
    if arr1[0] > arr2[0]
      arr << arr2.shift
    else
      arr << arr1.shift
    end
  end
  arr.concat(arr1).concat(arr2)
end

def split(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2

  left = split(arr.slice(0...mid))
  right = split(arr.slice(mid...arr.length))
  merge(left, right)
end
p split([1, 12, 13, 15, 3, 4, 5, 7, 8])

# 6. quick sort
def quick_sort(arr)
  return arr if arr.length <= 1
  pivot = arr.shift
  left, right = arr.partition{|num| num < pivot }
  quick_sort(left) + [pivot] + quick_sort(right)
end
p quick_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])

# PRACTICE TASKS ---------------------------------------------
# 1
def is_valid_parentheses(s)
  mapping = {"}" => "{", "]" => "[", ")" => "("}
  stack = []

  s.chars.each do |char|
    if mapping.values.include?(char)
      stack.push(char)
    elsif stack.empty? || stack.pop != mapping[char]
      return false
    end
  end
  stack.empty?
end
p is_valid_parentheses("()[]{}")

# 2 | 0,1,1,2,3,5,8 | 8=5+3 | 5=2+3 | 3=2+1 |next num is sum of prev 2 nums
def fibonacci_sequence(n)
  n1, n2 = 0, 1
  res = [n1]
  return res if n == 1
  res << n2
  return res if n == 2

  (n-2).times do
    n3 = n1 + n2
    res << n3
    n1, n2 = n2, n3
  end
  res
end
p fibonacci_sequence(7)

# 3
def find_duplicate_num(arr)
  hash = Hash.new{}
  arr.each do |num|
    if hash[num]
      return num
    else
      hash[num] = true
    end
  end
end
p find_duplicate_num([1, 2, 3, 4, 5, 6, 7, 7, 8, 9, 10])

# 4
def find_missing_num(arr)
  arr.sort!
  (0...arr.length).each do |i|
    return arr[i]+1 if arr[i+1] != arr[i]+1
  end
  -1
end
p find_missing_num([1, 3, 2, 4, 6])

# 5
def is_palindrome(s)
  normalized = s.downcase.gsub(/[^a-z0-9]/, '')
  normalized.reverse == normalized
end
p is_palindrome("abab")

# 6
def rotate(nums, k)
  k = k % nums.length
  nums.prepend(*nums.pop(k))
end
p rotate([1,2,3,4,5], 3)

# 7
def max_profit(prices)
  buy_price = prices[0]
  profit = 0
  prices.each do |price|
    if price < buy_price
      buy_price = price
    elsif (price - buy_price) > profit
      profit = price - buy_price
    end
  end
  profit
end
p max_profit([7,1,5,1])

# 8
def longest_common_prefix(strs)
  prefix = strs[0]
  strs.each do |str|
    while str.index(prefix) != 0
      prefix = prefix[0...-1]
      return false if prefix.empty?
    end
  end
  prefix
end
p longest_common_prefix(["flower","flow","flight"])

# 9
def first_bad_version_binary_search(n)
  left_i = 0
  right_i = n

  while left_i < right_i
    mid = (left_i + right_i) / 2
    if is_bad(mid)
      right_i = mid
    else
      left_i = mid + 1
    end
  end
  left_i
end

#10
def is_anagram(s, t)
  hash = Hash.new(0)
  s.chars.each{|n| hash[n] +=1 }
  t.chars.each{|n| hash[n] -=1 }
  hash.each_value.all?{|val| val == 0 }
end
p is_anagram("abab", "baba")

#11
def is_subsequence_two_pointer(s, t)
  s_p = 0
  t_p = 0
  while s_p < s.length && t_p < t.length
    if s[s_p] == t[t_p]
      s_p += 1
    end
    t_p += 1
  end
  s_p == s.length
end
p is_subsequence_two_pointer("abc", "ahbgdc")

# 12
def factorial(n)
  (1..n).reduce(1) { |acc, num| acc * num}
end
p factorial(5) #=> 5 = 5 * 4 * 3 * 2 * 1 = 120