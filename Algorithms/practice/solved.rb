require 'pry'
# ALGOS ---------------------------------------------
# 1. binary SEARCH,
def binary_search(arr, elem)
  left = 0
  right = arr.length
  while left < right
    mid = (left + right) / 2
    return mid if arr[mid] == elem

    if arr[mid] < elem
      left = mid + 1
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
    (0...arr.length - 1).each do |num|
      if arr[num] > arr[num + 1]
        arr[num], arr[num + 1] = arr[num + 1], arr[num]
        swapped = true
      end
    end
  end
  arr
end
p "bubble_sort: #{bubble_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 3. selection sort
def selection_sort(arr)
  (0...arr.length - 1).each do |n|
    min = n
    (n + 1...arr.length).each do |i|
      min = i if arr[min] > arr[i]
    end
    arr[n], arr[min] = arr[min], arr[n]
  end
  arr
end
p "selection_sort: #{selection_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 4. insertion sort
def insertion_sort(arr)
  (0...arr.length).each do |i|
    while i.positive?
      break if arr[i] > arr[i - 1]

      arr[i], arr[i - 1] = arr[i - 1], arr[i]
      i -= 1
    end
  end
  arr
end

p "insertion_sort: #{insertion_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 5. merge sort
def merge(arr1, arr2)
  arr = []

  while !arr1.empty? && !arr2.empty?
    arr << if arr1[0] < arr2[0]
             arr1.shift
           else
             arr2.shift
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

p "split: #{split([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 6. quick sort
def quick_sort(arr)
  return arr if arr.length <= 1

  pivot = arr.shift

  left, right = arr.partition { |n| n < pivot }
  quick_sort(left) + [pivot] + quick_sort(right)
end
p "quick_sort: #{quick_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# PRACTICE TASKS ---------------------------------------------
# 1
def is_valid_parentheses(s)
  mapping = { '}' => '{', ']' => '[', ')' => '(' }
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
p "is_valid_parentheses: #{is_valid_parentheses('()[]{}')}"

# 2 | 0,1,1,2,3,5,8 | 8=5+3 | 5=2+3 | 3=2+1 |next num is sum of prev 2 nums
def fibonacci_sequence(n)
  num1 = 0
  num2 = 1
  arr = [num1]
  return arr if n == 1

  (n - 2).times do |_num|
    num3 = num1 + num2
    arr << num3
    num1 = num2
    num2 = num3
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
  (0...arr.length).each do |num|
    return arr[num] + 1 if arr[num + 1] != arr[num] + 1
  end
end
p "find_missing_num: #{find_missing_num([1, 2, 4])}"

# 5
def is_palindrome(s)
  sanitized = s.downcase.gsub(/[^a-z0-9]/, '')
  sanitized.reverse == sanitized
end
p "is_palindrome: #{is_palindrome('aba')}"

# 6
def rotate(nums, k)
  nums.prepend(*nums.pop(k))
end
p "rotate: #{rotate([1, 2, 3, 4, 5], 3)}"

# 7
def max_profit(prices)
  buy = prices[0]
  profit = 0
  (1...prices.length).each do |i|
    if prices[i] < buy
      buy = prices[i]
    elsif profit < (prices[i] - buy)
      profit = prices[i] - buy
    end
  end
  profit
end
p "max_profit: #{max_profit([7, 1, 5, 1])}"

# 8
def longest_common_prefix(strs)
  prefix = strs[0]
  (1...strs.length).each do |i|
    while strs[i].index(prefix) != 0
      prefix = prefix[0...-1]
      return '' if prefix.nil?
    end
  end
  prefix
end
p "longest_common_prefix: #{longest_common_prefix(%w[flower flow flight])}"

# 9
def first_bad_version_binary_search(n)
  left = 0
  right = n
  while left < right
    mid = (left + right) / 2
    if is_bad(mid)
      right = mid
    else
      left = mid - 1
    end
  end
  left
end

# 10
def is_anagram(s, t)
  hash = Hash.new(0)
  s.chars.each { |char| hash[char] += 1 }
  t.chars.each { |char| hash[char] -= 1 }
  hash.each_value.all?(&:zero?)
end
p "is_anagram: #{is_anagram('abab', 'baba')}"

# 11
def is_subsequence_two_pointer(s, t)
  s_p = 0
  t_p = 0
  while s_p < s.length && t_p < t.length
    s_p += 1 if s[s_p] == t[t_p]
    t_p += 1
  end
  s_p == s.length
end
p "is_subsequence_two_pointer: #{is_subsequence_two_pointer('abc', 'ahbgdc')}"

# 12
def factorial(n)
  (1..n).inject(1) { |acc, num| acc *= num }
end
p "factorial: #{factorial(5)}" #=> 5 = 5 * 4 * 3 * 2 * 1 = 120}

# 13
# You are climbing a staircase. It takes n steps to reach the top.
# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
def climb_stairs(n)
  return n if n <= 2

  first = 1
  second = 2
  (3..n).each do |_n|
    third = first + second
    first = second
    second = third
  end
  second
end

climb_stairs(5) # 8

# 14 Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
def single_number(nums)
  hash = Hash.new(0)
  nums.each { |n| hash[n] += 1 }
  hash.key(1)
end

p single_number([3, 1, 2, 1, 2])

# 14 https://leetcode.com/problems/happy-number/
def is_happy(n)
  seen = {}
  until n == 1 || seen[n]
    seen[n] = true
    n = n.digits.map { |num| num**2 }.sum
  end
  n == 1
end

p is_happy(19)

# 15 https://leetcode.com/problems/add-digits
def add_digits(num)
  return num if num <= 9

  (num % 9).zero? ? 9 : num % 9
end

p add_digits(38) # 2
# https://leetcode.com/problems/largest-number-at-least-twice-of-others/
def dominant_index(nums)
  sorted = nums.sort
  max = sorted.pop()
  return nums.index(max) if sorted.all? { |n| n * 2 <= max }
  -1
end

p dominant_index([3,6,1,0])

def get_concatenation(nums)
  nums.push(*nums)
end
p get_concatenation([1,2,1])

def shuffle(nums, n)
  right = nums.pop(n)
  arr = []
  until nums.empty? || right.empty?
    arr<< nums.shift
    arr<< right.shift
  end
  arr
end
p shuffle([2,5,1,3,4,7], 3)

def final_value_after_operations(operations)
  x = 0
  for o in operations
      x += 1 if o.include?("+")
      x -= 1 if o.include?("-")
  end
  x
  operations.count("+") - operations.count('-')
end

p final_value_after_operations( ["--X","X++","X++"])

# https://leetcode.com/problems/defanging-an-ip-address/
def defang_i_paddr(address)
  address.gsub(/./, "[.]")
end
p defang_i_paddr("1.1.1.1")

# https://leetcode.com/problems/jewels-and-stones/
def num_jewels_in_stones(jewels, stones)
  jewels.chars.inject(0){|sum, j| sum += stones.count(j)}

end
p num_jewels_in_stones("aA", "aAAbbbb")
def interpret(command)
  command.gsub(/\(\)/, "o").gsub(/\(al\)/, "al")
end
p interpret("G()()()()(al)")

# @param {Integer} num
# @return {Integer}
def minimum_sum(num)
  digits = num.to_s.chars.sort

  new1 = ""
  new2 = ""

  digits.each_with_index do |digit, index|
    if index.even?
      new1 << digit
    else
      new2 << digit
    end
  end

  new1.to_i + new2.to_i
end
p minimum_sum(2932)

def sort_sentence(s)
  s = s.split(" ")
  (0...s.length-1).each do |n|
    min = n
    (n+1...s.length).each do |j|
      # binding.pry
      min  = j if s[min][-1].to_i > s[j][-1].to_i
    end
    s[n], s[min] = s[min], s[n] if min != n
  end
  s.join(" ").gsub(/[1-9]/,"")
  end
p sort_sentence("is2 sentence4 This1 a3")

def balanced_string_split(s)
  balanced_str = 0
  count = 0
  s.chars.each do |char|
    if char == "L"
      count +=1
    else
      count -=1
    end
    if count.zero?
      balanced_str+=1
    end
  end
  balanced_str
end

p balanced_string_split("RLRRLLRLRL")

def running_sum(nums)
  sum = 0
  nums.map{| n| sum+=n}
end

p running_sum([1,2,3,4])