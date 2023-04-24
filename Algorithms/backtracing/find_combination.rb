# frozen_string_literal: true

# This example finds combination number

def find_combination(combination, current = [], index = 0)
  if index == combination.length
    puts "found #{current}"
    return

  end

  (1..9).to_a.each do |n|
    if n == combination[index]
      current.push(n)
      return if find_combination(combination, current, index + 1)

      current.pop
    end
    false
  end
  false
end

find_combination([1, 2, 3])
