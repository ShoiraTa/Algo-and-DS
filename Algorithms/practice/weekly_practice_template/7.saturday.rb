# 1. merge sort
def merge(arr1, arr2); end

def split(arr); end

p "split: #{split([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 2. quick sort
def quick_sort(arr); end
p "quick_sort: #{quick_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])}"

# 3
def is_anagram(s, t); end
p "is_anagram: #{is_anagram('abab', 'baba')}"

# 4 A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions
def is_subsequence_two_pointer(s, t); end
p "is_subsequence_two_pointer: #{is_subsequence_two_pointer('abc', 'ahbgdc')}"

# 5 Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
def single_number(nums); end

p "single_number: #{single_number([3, 1, 2, 1, 2])}"

# 6 https://leetcode.com/problems/happy-number/
def is_happy(n); end

p "is_happy: #{is_happy(18)}"

# 7 https://leetcode.com/problems/add-digits
def add_digits(num); end

p "add_digits: #{add_digits(38)}" # 2
