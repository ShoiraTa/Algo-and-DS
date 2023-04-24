# frozen_string_literal: true

def target_sum(nums_arr, target, current = [], index = 0)
  print current
  if current.length == 2
    if current.sum == target
      puts "Pair found: #{current}"
      return true
    end
    return false
  end

  return false if index >= nums_arr.length

  current.push(nums_arr[index])
  found = target_sum(nums_arr, target, current, index + 1)
  current.pop
  return true if found

  target_sum(nums_arr, target, current, index + 1) unless found
end

target_sum([1, 3, 5, 7, 9], 12)
