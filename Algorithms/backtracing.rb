require 'pry'

# A simple example of solving a combination lock using backtracking. 
# The combination lock has three dials, each with digits from 0 to 9, and we need to find the correct combination to unlock it. 
# We'll use a backtracking algorithm to try every possible combination until we find the correct one.

def find_arrangements(arr, current_arrangement = [], used = [])
  print current_arrangement
  if current_arrangement.length == arr.length
    puts "Arrangement: #{current_arrangement.join(', ')}"
    return
  end

  arr.each do |number|
    next if used.include?(number)

    current_arrangement.push(number)
    used.push(number)

    find_arrangements(arr, current_arrangement, used)

    current_arrangement.pop
    used.pop
  end
end

find_arrangements([1, 2, 3])



