# (RuboCop)
# prints the given number of combinations from a text
require 'csv'
text = 'abandon ability able about'.split

def combination_finder(arr, target_combination, used = [], current_combination = [])
  if current_combination.length == target_combination
    puts "one combination: #{current_combination}"
    CSV.open('combinations.csv', 'a+') do |csv|
      csv << current_combination
    end
    return
  end

  arr.each_with_index do |word, i|
    next if used[i]

    used[i] = true
    current_combination.push(word)
    combination_finder(arr, target_combination, used, current_combination)
    used[i] = false
    current_combination.pop
  end
end

combination_finder(text, 2)
