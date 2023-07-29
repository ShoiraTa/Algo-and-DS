# 1. merge sort
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

# 2. quick sort
def quick_sort(arr)
  return arr if arr.length <= 1

  pivot = arr.shift
  left, right = arr.partition { |num| num < pivot }
  quick_sort(left) + [pivot] + quick_sort(right)
end
p "quick_sort: #{quick_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 3
def is_anagram(s, t)
  hash = Hash.new(0)
  s.chars.each { |e| hash[e] += 1 }
  t.chars.each { |e| hash[e] -= 1 }

  hash.each_value.all?(&:zero?)
end
p "is_anagram: #{is_anagram('abab', 'baba')}"

# 4
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
