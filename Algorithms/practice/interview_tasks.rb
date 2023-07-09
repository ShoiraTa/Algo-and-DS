require 'pry'
def find_duplicate_num(arr)
  hash = {}
  arr.each do |num|
    return num if hash[num]

    hash[num] = true
  end
  nil
end
p find_duplicate_num([1, 2, 3, 4, 5, 6, 7, 7, 8, 9, 10])

def find_missing_num(arr)
  arr.sort
  (0...arr.length).each do |i|
    return (arr[i] + 1) if arr[i + 1] != arr[i] + 1
  end
end
p find_missing_num([1, 2, 4])

def rotate(nums, k)
  k %= nums.length 
  nums.prepend(*nums.pop(k))
end
p rotate([1,2], 3)

def max_profit(prices)
  return 0 if prices.length < 2
  buy_price = prices[0]
  profit = 0

  prices.each do |price|
    if price < buy_price
      buy_price = price
    elsif price - buy_price > profit
      profit = price - buy_price
    end
  end
  profit
end
p max_profit([7,1,5,1])

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
p longest_common_prefix(["flower","flow","flight"])

# you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad.
def first_bad_version_binary_search(n)
  left = 1
  right = n

  while left < right
    mid = left + (right - left) / 2
    if is_bad_version(mid)
      right = mid # If the middle one is bad, the first bad one must be to its left (or it could be the middle one itself)
    else
      left = mid + 1 # If the middle one is not bad, the first bad one must be to its right
    end
  end

  left # when left and right pointers meet, that's where the first bad version is.
end

def is_palindrome(s)
  return true if s.size == 1
  normalized = s.gsub(/[^a-zA-Z0-9]/, '').downcase
  normalized.reverse == normalized
end
p is_palindrome("1a2")

def is_anagram(s, t)
  return false if s.length != t.length
  hash = Hash.new(0)
  s.chars.each{|char| hash[char] += 1}
  t.chars.each{|char| hash[char] -= 1}
  hash.each_value.all? {|v| v == 0}
end
p is_anagram("rat", 'raa')

def is_subsequence_two_pointer(s, t)
  s_pointer = 0
  t_pointer = 0

  while s_pointer < s.length && t_pointer < t.length
    if s[s_pointer]==t[t_pointer]
      s_pointer+=1
    end
    t_pointer +=1
  end
  s_pointer == s.length
end
# "ace" is a subsequence of "abcde" while "aec" is not
p is_subsequence_two_pointer("abc", "ahbgdc")

def is_valid_parentheses(s)
  stack = []
  mapping = { ']' => '[', ')' => '(', '}' =>  '{'}

  s.chars.each do |char|
    if mapping.values.include?(char)
      stack.push(char)
    elsif mapping.keys.include?(char)
      return false if stack.empty? || stack.pop != mapping[char]
    end
  end
  stack.empty?
end
p is_valid_parentheses("()[]{}")

def fibonacci_sequence(n)
  n1, n2 = 0, 1
  res = [n1]
  return res if n == 1

  res.push(n2)

  (n - 2).times do
    n3 = n1 + n2
    res.push(n3)
    n1,n2 = n2,n3
  end
  res
end
p fibonacci_sequence(7)

def factorial(n)
  (1..n).reduce(1) { |sum, number| sum * number }
end
p factorial(5)

# arr = [1, 2, 2, 3, 3, 3, 4], then arr.group_by(&:itself) results in {1=>[1], 2=>[2, 2], 3=>[3, 3, 3], 4=>[4]}.
def find_duplicates(arr)
  return arr.group_by(&:itself).select { |_, v| v.size > 1 }.keys
end
p find_duplicates([1, 2, 2, 3, 3, 3, 4])
