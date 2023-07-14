require 'pry'

# find missing numbers in array if there are
def missing_number(nums)
  max = nums.max
  return nil if nums.length + 1 == max
  missing_nums = []
  (0...nums.length-1).each do |i|
    missing_nums.push(nums[i]+1) if nums[i+1] != nums[i]+1
  end
  missing_nums
end

# p missing_number([1,3,5])

def merge(nums1, m, nums2, n)
  arr = []
  nums1 = nums1.take(m)
  nums2 = nums2.take(n)

  while !nums1.empty? && !nums2.empty?
    if nums1[0] < nums2[0]
      arr.push(nums1.shift)
    else
      arr.push(nums2.shift)
    end
  end
  arr.concat(nums1).concat(nums2)
end


def majority_element(nums)
    size = nums.size
    maj_min = size.even? ? size / 2 : (size+1)/2

    occurance = Hash.new(0)
    nums.each do |el|
      occurance[el] = + 1
    end
    occurance
end

# p majority_element([8,8,7,7,7])


def remove_element(nums, val)
  k = 0
  nums.each do |num|
      if num != val
        nums[k] = num
        k +=1
      end
  end
  k
end

def contains_duplicate(nums)
  hash = {}
  nums.each do |el|
    return true if hash[el]
    hash[el] = true
  end
  false
end


def intersection(nums1, nums2)
  uniq1 = nums1.uniq
  uniq1.inject([]) {|acc, num|  nums2.include?(num)? acc << num : acc}
end
# p intersection([3,2], [2])


# https://leetcode.com/problems/longest-common-prefix/?envType=study-plan-v2&envId=top-interview-150
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

# p longest_common_prefix(["flower","flow","flight"])


# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/?envType=study-plan-v2&envId=top-interview-150
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

# p max_profit([7,1,5,1])

def rotate(nums, k)
  k %= nums.length 
  nums.prepend(*nums.pop(k))
end
# p rotate([1,2], 3)


def remove_duplicates(nums)
  i = 0
  nums.each do |num|
    if i < 2 || num > nums[i-2]
      nums[i] = num
      i+=1
    end
  end
  nums
end

# p remove_duplicates([0,0,1,1,1,2,3,3])

def is_palindrome(s)
  normalized_s =  s.gsub(/[^a-zA-Z]/, '').downcase
  return false if normalized_s.length <= 1
  normalized_s == normalized_s.reverse
end

# p is_palindrome("1a2")

def reverse_vowels(s)
  vovels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U' ]
  chars = s.chars
  arr = []
  chars.each {|char| arr << char if vovels.include?(char)}.reverse
  chars.each_with_index do |char, i|
    if vovels.include?(char)
      chars[i] = arr.pop
    end
  end
  chars.join()
end
# p reverse_vowels("aA") # > holle

def is_isomorphic(s, t)
  s_h = {}
  t_h = {}

  s.chars.zip(t.chars) do |s_char, t_char|
    if s_h[s_char]
      binding.pry
      return false if s_h[s_char] != t_char
    else
      s_h[s_char] = t_char
    end

    if t_h[t_char]
      return false if t_h[t_char] != s_char
    else
      t_h[t_char] = s_char
    end
  end
  true
end
p is_isomorphic('edd', 'afd')

def is_power_of_three(n)
  return false if n <= 0 
  while n % 3 == 0
     n /= 3
  end
  n==1
end