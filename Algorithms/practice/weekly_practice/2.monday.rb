require 'pry'

# 1
def find_duplicate_num(arr) 
  hash = Hash.new(0)
  arr.each{|num| hash[num]+=1 }
  hash.key(2)
end
p "find_duplicate_num: #{find_duplicate_num([1, 2, 3, 4, 5, 6, 7, 7, 8, 9, 10])}"

# 2
def find_missing_num(arr)
  (0...arr.length).each do |i|
    return arr[i]+1 if  arr[i]+1 !=  arr[i+1]
  end
end
p "find_missing_num: #{find_missing_num([1, 2, 4])}"

# 3
def is_palindrome(s)
  s = s.downcase.gsub(/^a-b0-9/, "")
  s.reverse == s
end
p "is_palindrome: #{is_palindrome('aba')}" # back and forth reads the same for alphabetical + num chars

# 4
def rotate(nums, k)
  nums.prepend(*nums.pop(k))
end
p "rotate: #{rotate([1, 2, 3, 4, 5], 3)}"
