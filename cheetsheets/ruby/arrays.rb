#Arr methods 

  # &, *, +, -, <<, <=>, ==, [], []=, abbrev, all?, any?, append, assoc,
  # at, bsearch, bsearch_index, clear, collect, collect!, combination,
  # compact, compact!, concat, count, cycle, deconstruct, delete,
  # delete_at, delete_if, difference, dig, drop, drop_while, each,
  # each_index, empty?, eql?, fetch, fill, filter, filter!, find_index,
  # first, flatten, flatten!, hash, include?, index, initialize_copy,
  # insert, inspect, intersection, join, keep_if, last, length, map, map!,
  # max, min, minmax, none?, one?, pack, permutation, pop, prepend,
  # product, push, rassoc, reject, reject!, repeated_combination,
  # repeated_permutation, replace, reverse, reverse!, reverse_each,
  # rindex, rotate, rotate!, sample, select, select!, shelljoin, shift,
  # shuffle, shuffle!, size, slice, slice!, sort, sort!, sort_by!, sum,
  # take, take_while, to_a, to_ary, to_h, to_s, transpose, union, uniq,
  # uniq!, unshift, values_at, zip, |

# Basic Methods


[1,2,3] * 3                           #=> [1,2,3,1,2,3,1,2,3]
[1,1,1,2,3,4,4,4] - [1,4]             #=> [2, 3]deletes elemets from arr2 in arr1
[1,2,3,4] & [1,4,5, 6]                #=> [1, 4] returns all elements present in both arrays
[1, 2, 3].concat([4,5])               #=> [2, 2, 3, 4, 5]

[1, 2, 3].join                        #=> "123"
[1, 2, 3].join('-')                   #=> "1-2-3"
 
[2, 3, 4].index(2)                    #=> [0]
[1, 2, 3].values_at(0, 2, 100)        #=> 1, 3, nil  returns values at index position in arr2
[1, 2, 3].fetch(2,"not found ")       #=> 3
[1, 2, 3].first(2)                    #=> [1, 2]
[1, 2, 3].last(2)                     #=> [2, 3]
[false, true, true].count(true)       #=>  2
[1,2,3].each_cons(2).map{|n|n.join}   #=> ["12", "23"]

[1, 2, 3]<<4<<5                       #=> [1, 2, 3, 4, 5] 
[1, 2, 3].push(3)                     #=> [1, 2, 3] 
[1, 2, 3].insert(1, "big", "small")   #=> [1, "big", "small", 2, 3] 
[1, 2, 3].pop(2)                      #=> [2,3 ]        =>[1]
[1, 2, 3].shift(2)                    #=> [1,2 ]        =>[3]
[1, 2, 3].unshift("big", "small")     #=> ["big", "small", 1, 2, 3]
[1, 2, 3][1]=2                        #=> [2, 2, 3]

[1, 2, 3].length                      #=>3
[1, 2, 3].size                        #=>3

[1,2] <=> [1,2]                       #=>0
[1,2,3] <=> [1,2]                     #=>1
[1,2] <=> [1,2,3]                     #=>-1
 
[2, 3, 3, 3, 4].uniq                  #=> 2,3,4 removes dublicates
[1, 4, 2, 2, 3].difference([1, 2, 3]) #=> [4]
[2, 3, 4].join("hey")                 #=> "2hey3hey4"
[2, 3, 4].max                         #=> [4]
[2, 3, 4].min                         #=> [2]
[2, nil, 3, nil 4].compact            #=> 2,3,4 removes nil objects

[22,33,54,12,78].select { |number|number.even?} #=> [22, 54, 12, 78] matches all values
[22,33,54,12,78].reject { |number|number.odd?}  #=> [33]
[2, 3, 3].reduce{|prev, curr|prev+ curr }       #=> 8
[2, 3, 3, 3, 4].find{ |number|number.odd?}      #=> 3; or detect; matches first val, select matches all values


[2, 3, 4].any?(3) #{}                  #=> true
[2, 3, 4].none?(3) #{}                #=> false
[2, 3, 4].all?(3) #{}                 #=> false         
[1, 2, 3].include?(3)                 #=> true
[1 ,2, 3].empty?                      #=> false

[1, 2, 3].reverse                     #=> [3, 2, 1]

[1, 2, 3, 4].sample(2)                #=> 2,3
[1, 2, 3, 4].shuffle                  #=> 4

a= [22,33,54,12,78].dub               #=> creates new oject dublicate of arr   

[[2,2], [3,3], [4,4]].flaten          #=> [2, 2, 3, 3, 4, 4] .flatten (turn multidim. arr into onedimen.)
[1,2,3].zip(["hey", "you", "there"])  #=> [[1, "hey"], [2, "you"], [3, "there"]]




# creating new array

[] #=> []
Array.new(3)            #=> [nil, nil, nil]
Array.new(3, 7)         #=> [7, 7, 7]
Array.new(3, true)      #=> [true, true, true]
Array.new(3, [1,2,3])      #=> [[1,2,3], [1,2,3], [1,2,3]]

# accessing arrays
array = %w[This is a small array]

array.length           #=>4
array[array.length-1]  #=> "array"
array[0]               #=> "This"
array[1]               #=> "is"
array[4]               #=> "array"
array[-1]              #=> "array"
array[-2]              #=> "small"

# Fetch if index position doesnt exist user will get error
array.fetch(2)          #=> "a"
array.fetch(20, false)  #=> false


# First & last
array = %w[This is a small array]

array.first         #=> "This"
array.first(2)      #=> ["This", "is"]
array.last(2)       #=> ["small", "array"]

# Adding and Removing Elements
# unshift (add at the beginning) == push (add at the end) ;
# shift (cut last element and return it)== pop (cut frist element and return)
num_array = [1, 2]

num_array << 3            #=> [1, 2, 3]

num_array.pop             #=> 3
num_array.shift           #=> 1
num_array                 #=> [2, 3]
num_array.push(4, 5)      #=> [2, 3, 4, 5]
num_array.unshift(1)      #=> [1, 2, 3, 4]

num_array[2] = 6          #=> [1, 2, 6, 4, 5]

# concatenating arrays
a = [1, 2, 3]
b = [3, 4, 5]

a + b                           #=> [1, 2, 3, 3, 4, 5]
a.concat(b)                     #=> [1, 2, 3, 3, 4, 5]
[1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]
%w[Ruby Monstas] * 3 #=> ["Ruby", "Monstas", "Ruby", "Monstas", "Ruby", "Monstas"]

#slice is the same as arr[i]
arr = [1, 2, 3, 4]
arr.slice(0)                     #=>[1]
arr.slice(0..2)                  #=>[1, 2, 3]

# Array.difference   removes any items that also appear in any of the arrays given as arguments
[1, 1, 2, 2, 3, 3, 4, 5].difference([1, 2, 4])         #=> [ 3, 3, 5 ]
[1, 'c', :s, 'yep'].difference([1], %w[a c])           #=> [ :s, "yep" ]

# Array.union  joins arr with self, excluding any duplicates and preserving the order from the given arrays.

%w[a b c].union(%w[c d a])                             #=> [ "a", "b", "c", "d" ]
['a'].union(%w[e b], %w[a c b])                        #=> [ "a", "e", "b", "c" ]
['a'].union #=> [ "a" ]

# arr join in string and add separator
[2, 3, 4].join("hey")                                  #=> "2hey3hey4"

# select 
numbers = [22,33,54,12,78].select { |n| n.odd?}        #=> [33, 53, 73]

#.find
[22,33,54,12,78].find{|el| el.odd?}                    #=> 33

#.any
p [1,2,3,4,5].any?(3)                                  #=>true
[1,2,3,4,5].any?{|el|  el.odd? }                       #=>true  

#uniq emoves dublicates
[2, 3, 3, 3, 4].uniq                  #=>2,3,4 r


#compact removes nil objects
[2, nil, 3, nil 4].compact            #=>2,3,4 

#.inject .reduce
[2, 3, 3, 3, 4].reduce {|previous, current|previous+ current } #=> 15

#.sample (extract random element)
[1, 2, 3, 4].sample(2)                #=>2,3


#dublicate arr .dub
a = [1,2,3] 
b=a.dub

#.flatten (turs multidimentional arr into one-dimentional)
[[2,2], [3,3], [4,4]].flaten            #=>[2, 2, 3, 3, 4, 4] 

#.zip (turs onedimentional  arr into multidimentional)
num1 = [1,2,3]
num2 = ["hey", "you", "there"]
num3 = [true, false , true]

num1.zip(num2,num3)               #=>[[1, "hey", true], [2, "you", false], [3, "there", true]]

# multimentional arr unpack
words = [["KAte", "Lena", "MAria"], [15,24,17]]
names, years =  words
p years                                 #=>[15, 24, 17]
p names                                 #=>["KAte", "Lena", "MAria"]

# multidimentional arr iteration
s = [%w[ham swiss], %w[turkey cheddar], ['roast beef', 'gruyere']]
s.each do |a|
  a.each  do |b|
    puts b
  end
end





