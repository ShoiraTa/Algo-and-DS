# frozen_string_literal: true

puts 5.methods
# Predicate Methods return boolean even?, odd?, or between?

puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true
puts 12.between?(10, 15) #=> true
'age'.respond_to?(:next) #=> true

# bang methods .map! .downcase!  overwrites the objects
puts 'whisper'.downcase! #=> "HELLO EVERYBODY"

# splat arguments- method can receive one or more arguments, *argument,

def say_hi(*num)
  sum = 0
  num.each { |n| sum += n }
end
say_hi(1, 2, 3, 4, 5)

# Combined Comparison Operator -- <=>
sorted = change.sort # Ascending sort
sorted = change.sort { |a, b| a <=> b } # Same thing!
sorted
# => ["cents", "coins", "dimes", "pence", "pennies", "quarters"]

# sort
books.sort do |first, second|
  if first < second # first book before second alphabetically
    -1
  elsif first > second # first after second
    1
  else # first and second are the same
    0
  end
end

# sort descending

books.sort do |first, second|
  if first > second # first book before second alphabetically
    -1
  elsif first < second # first after second
    1
  else # first and second are the same
    0
  end
end

# or

strings.sort_by { |str| -str.length }

# block

sum = 0
[3, 4, 5, 6].each do |n|
  sum += n
end
puts sum

# break
