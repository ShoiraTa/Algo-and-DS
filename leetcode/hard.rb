require 'pry'
def count_smaller(nums)
  return [0] if nums.length <= 1

  arr = []
  sum = nums.count { |n| nums[0] > n }

  arr.push(sum)

  nums.shift
  arr.push(count_smaller(nums))

  arr.flatten
end

p count_smaller([-1, -1])
# [0]
