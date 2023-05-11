# frozen_string_literal: true

# https://ruby-doc.org/core-3.0.0/Enumerable.html

# all?(pattern) → true or false
# all? [{ |obj| block } ] → true or false
#
# %w[ant bear cat].all? { |word| word.length >= 3 }       #=> true
# %w[ant bear cat].all? { |word| word.length >= 4 }        #=> false
# %w[ant bear cat].all?(/t/)                              #=> false
# [1, 2i, 3.14].all?(Numeric)                             #=> true
# [nil, true, 99].all?                                    #=> false
# [].all?                                                 #=> true

# any? [{ |obj| block }] → true or false
# any?(pattern) → true or false
#
# %w[ant bear cat].any? { |word| word.length >= 3 }        #=> true
# %w[ant bear cat].any? { |word| word.length >= 4 }        #=> true
# %w[ant bear cat].any?(/d/)                               #=> false
# [nil, true, 99].any?(Integer)                            #=> true
# [nil, true, 99].any?                                     #=> true
# [].any?                                                  #=> false

#
# chain(*enums) → enumerator
# e = (1..3).chain([4, 5])
# e.to_a #=> [1, 2, 3, 4, 5]
#

#
# chunk { |elt| ... } → an_enumerator
#
# [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].chunk { |n|
#   n.even?
# }.each { |even, ary|
#   p [even, ary]
# }
#
#=> [false, [3, 1]]
#   [true, [4]]
#   [false, [1, 5, 9]]
#   [true, [2, 6]]
#   [false, [5, 3, 5]]

#
# collect { |obj| block } → array
# collect → an_enumerator
#
# (1..4).map { |i| i*i }                              #=> [1, 4, 9, 16]
# (1..4).collect { "cat"  }                           #=> ["cat", "cat", "cat", "cat"]

#
# flat_map { |obj| block } → arrayclick to toggle source
# flat_map → an_enumerator
#
# [1, 2, 3, 4].flat_map { |e| [e, -e] }                #=> [1, -1, 2, -2, 3, -3, 4, -4]
# [[1, 2], [3, 4]].flat_map { |e| e + [100] }          #=> [1, 2, 100, 3, 4, 100]

# .select also #filter
friends = %w[Sharon Leo Leila Brian Arun]
friends.select { |f| puts f != 'Arun' }
#=> ["Sharon", "Leo", "Leila", "Arun"]

# .reject
friends = %w[Sharon Leo Leila Brian Arun]
new_friends = friends.reject { |f| f == /[\w{3}]/ }
#=> ["Sharon", "Leo", "Leila", "Arun"]

# .each
friends = %w[Sharon Leo Leila Brian Arun]
friends.each { |friend| "Hello, #{friend}" }

# .each_with_index
friends = %w[Sharon Leo Leila Brian Arun]
friends.each_with_index { |_friends, index| index }

# .map also #collect
# returns a new array with the results of running Transforming arrays
friends = %w[Sharon Leo Leila Brian Arun]
friends.map { |friends| friends.gsub(/a/, 'A') }
#=> "sheep"

# .map! # modifies original array.
salary = [100, 500, 200]
salary.map! { |a| a - 50 }

# reduce also #inject
numbers = [2, 3, 4, 5, 6]
sum = numbers.reduce { |sum, num| sum + num }
sum

# Sum some numbers
(5..10).reduce(:+) #=> 45

# Same using a block and inject
(5..10).inject { |sum, n| sum + n } #=> 45

# Multiply some numbers
(5..10).reduce(1, :*) #=> 151200

# Same using a block
(5..10).inject(1) { |product, n| product * n } #=> 151200

# find the longest word
longest = %w[cat sheep bear].inject do |memo, word|
  memo.length > word.length ? memo : word
end

# reduce also #inject  with hash
def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: use a new hash or an empty hash as the initial accumulator value
  word_list.each_with_object(Hash.new(0)) do |w, hash|
    hash[w.to_s] = w.length
  end
end
