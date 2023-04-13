# Imagine you have to climb a staircase, it has 4 stairs
# Every time you can make 1,2 or 3 steps at a time, 
# this algoryths calculates all the possible steps you can take  to reach the climb the stairs

#  [1, 1, 1, 1]
#  [1, 1, 2]
#  [1, 2, 1]
#  [1, 3]
#  [2, 1, 1]
#  [2, 2]
#  [3, 1]

# Sum of all these numbers is 4

def climb_stairs(stairs, current_steps = 0, steps_taken = [])
  # Base case: If we reach the exact number of stairs, print the steps_taken and return
  if stairs == current_steps
    puts "found #{steps_taken}"
    return
  end

  # Base case: If we go beyond the total number of stairs, return (backtrack)
  if stairs < current_steps
    return
  end

  # Iterate through all possible step sizes (1 to 9 in this case)
  (1..3).to_a.each do |step|
    # Add the current step size to the steps_taken array
    steps_taken.push(step)

    # Recursively call climb_stairs with the new current_steps and updated steps_taken
    climb_stairs(stairs, current_steps + step, steps_taken)

    # Backtrack: Remove the last step from steps_taken to explore other possibilities
    steps_taken.pop
  end
end

climb_stairs(4)
