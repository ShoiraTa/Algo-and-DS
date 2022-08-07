# frozen_string_literal: true

# loops////////////////////////////////////////////////////////////////////
# while Loop///////////////////////

i = 0
while i < 10
  puts "i is #{i}"
  i += 1
end

# until Loop///////////////////////

puts '2+2 is?'
print 'Wrong try again ' until gets.chomp.to_i == 4

# For Loop//////////////////////////
(3..6).each do |i|
  puts("#{i} zombies are coming")
end

# Times Loop//////////////////////////
5.times do |number|
  puts "hey #{number}"
end

# Upto and Downto Loops////////////////
4.upto(8) { |num| print num.to_s }
8.downto(4) { |num| puts num.to_s }

# Loop loop////////////////////////////
i = 0
loop do
  i += 1
  puts "loop loop #{i}"
  break if i >= 5
end

# next if
i = 10
loop do
  i -= 1
  next if i.odd?

  print i.to_s
  break if i.negative?
end

# each///////////////////////
my_arr = [1, 2, 3, 4, 5]

my_arr.each do |x|
  x += 10
  puts x.to_s
end

# Conditional operators
i = 0
until i == 6
  i += 1
  if i < 6
    puts i.to_s
  else
    puts 'end'
  end
end

# .eql
a = 4
b = 4
a.eql?(b)
puts 'a is equal to b'

# <=>
5 <=> 10    #=> -1
10 <=> 10   #=> 0
10 <=> 5 #=> 1

# Case Statements
word = 'hi'

say = case word = 'hi'
      when 'hi'
        puts 'hi mate'
        mood = 'good'
      when 'hello'
        puts 'Hello Sir'
        mood = 'bad'

      else
        puts 'good day'
        mood = 'so so'
      end

# Unless Statements
is = 'happy'

if is == 'happy'
  puts 'Im also happy'
else
  puts 'dance'
end

# Ternary operator

age = 15
isOld = age > 30 ? 'you are old dude' : 'You are very young'
puts isOld

# times
str = 'hello spring'
10.times { print str }
