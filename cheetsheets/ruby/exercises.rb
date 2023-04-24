# frozen_string_literal: true
# Mad libs game////////////////////////////////////////////////////////////////////////////////
#
# puts "your favorite color?"
# color = gets.chomp()
# puts "another favorite color?"
# color2 = gets.chomp
# puts "whom do you love?"
# love = gets.chomp
#
# puts "here is your poem"
# print "roses are + #{color}"
# puts "violets are + #{color2}"
# puts "I love + #{love}"

# def guess(arr)////////////////////////////////////////////////////////////////////////////
#   # use #each_with_index to iterate through each item of the guesses (an array)
#   # use puts to output each list item "Guess #<number> is <item>" to console
#   # hint: the number should start with 1
#   arr.each_with_index do |arr, index|
#     index1 = index + 1
#     puts "Guess ##{index1} is #{arr}"
#   end
# end
#
# def display_current_inventory(inventory_list)
#   # use #each to iterate through each item of the inventory_list (a hash)
#   # use puts to output each list item "<key>, quantity: <value>" to console
#   inventory_list.each { |a, b| puts "#{a}, quantity: #{b}" }
# end
# display_current_inventory({ apples: 1, bananas: 3 })
#
# def find_absolute_values(numbers)
#   # use #map to iterate through each item of the numbers (an array)
#   # return an array of absolute values of each number
#   numbers.map(&:abs)
# end
#
# def find_low_inventory(inventory_list)
#   # use #select to iterate through each item of the inventory_list (a hash)
#   # return a hash of items with values less than 4
#   inventory_list.select { |_a, b| b < 4 }
# end
#
# def find_longes_word(word_list)
#   # use #reduce to iterate through each item of the word_list (an array)
#   # return the longest word in the word_list
#   # hint: the result of each iteration should be the accumulator when its
#   # length is greater than word.length (otherwise the result should be the word)
#   word_list.reduce { |n, w| n.length > w.length ? n : w }
# end
#
# def find_word_lengths(word_list)
#   # use #reduce to iterate through each item of the word_list (an array)
#   # return a hash with each word as the key and its length as the value
#   # hint: use a new hash or an empty hash as the initial accumulator value
#   word_list.each_with_object(Hash.new(0)) do |w, hash|
#     hash [w.to_s] = w.length
#   end
# end
#
# def ascii_translator(number)
#   number.chr
# end
#
# method name: #common_sports
# parameters: current_sports and favorite_sports (both arrays)
# return value: an array containing items in both arrays
# hint: use Array#intersection
#
# def common_sports(current_sports, favorite_sports)
#   current_sports.intersection(favorite_sports)
# end
#
# def ordNum(s)
#   return puts 'invalid' if s.length != 1
#
#   puts s.ord.to_i
# end
# ordNum('z')
#
# def twenty_first_century(year)
#   # method name: #twenty_first_century?
#   # parameter: year (an integer)
#   # return value: true if the year is between 2001 - 2100, otherwise return false
#   # hint: use Comparable#between?
#   puts year.between?(2001, 2100)
# end
#
# def pet_pun(animal = nil)
#   # method name: #pet_pun
#   # parameter: animal (a string)
#   # return value: nil
#   # console output: if animal is 'cat', 'Cats are purr-fect!' (perfect)
#   # console output: if animal is 'dog', 'Dogs are paw-some!' (awesome)
#   # console output: otherwise, "I think <animal>s have pet-tential!" (potential)
#   # hint: use puts
#   case animal
#   when 'cat'
#     return 'Cats are purr-fect!'
#
#   when 'dog'
#     return 'Dogs are paw-some!'
#   end
#
#   "I think #{animal}s have pet-tential!"
# end
# puts pet_pun('hug')

# bubble sort loop//////////////////////////////////////////////////////////////////////////////
#
# def bubble_sort_loop(arr)
#   n = arr.length
#   loop do
#     swapped = false
#     (n - 1).times do |i|
#       arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]
#     end
#     break unless swapped
#   end
#   arr
# end
#
# def bubble_sort_until(arr)
#   n = arr.length
#   sorted = false
#   until sorted == true
#     sorted = true
#     (n - 1).times do |i|
#       next unless arr[i] > arr [i + 1]
#
#       sorted = false
#       temp = arr[i]
#       arr[i] = arr[i + 1]
#       arr[i + 1] = temp
#       puts i
#     end
#   end
#
#   arr
# end
#
# def buble_sort_while(arr)
#   n = arr.length
#   sorted = false
#   while sorted ==false
#     sorted = true
#     (0...n - 1).each do |i|
#       next unless arr[i] > arr[i + 1]
#       sorted = false
#       temp = arr[i]
#       arr[i] = arr[i + 1]
#       arr[i + 1] = temp
#     end
#   end
#   arr
# end
#
# print buble_sort(%w[1,4,7,2])

# case when example /////////////////////////////////////////////////////////////////////////////
# puts "What's your favorite language?"
# language = gets.chomp
# case
# when language == "Ruby"
#  puts "Ruby is great for web apps!"
# when language == "Python"
#  puts "Python is great for science."
# when language == "JavaScript"
#  puts "JavaScript makes websites awesome."
# when language == "HTML"
#  puts "HTML is what websites are made of!"
# when language == "CSS"
#   puts "CSS makes websites pretty."
# else   puts "I don't know that language!"
# end
#
#
# User input change
# puts "type a string"
# str = gets.chomp
#
# if str.include? "s"
#   gsub(/s/, "th")
#   puts str1
# else
#   puts "nothing to change"
# end
#
# puts "your string is #{str}"
#
#
# age = [14, 17, 32, 75, 55]
# is_young = Proc.new do |age|
#   age<20
#
# end
# p age.select(&is_young)
#
#
#
# def say_hi  (num)
#   p "start"
# yield  num if block_given?
# yield 3
# end
# say_hi(2){|num| p num+2}
#
# say_hi(5){|num| p num*num}
#
#
# Proc as an object
# say_bye = Proc.new {p "hi there"}
# 5.times(&say_bye)
#
# pass ruby method as proc
# p [2,5,6,7].each(&:to_s)
#
# Method with Proc parameters
# def is_how (name, &myprc)
#   p "my friend's name is #{name}"
# myprc.call(name)
# end
# is_good = Proc.new{|n|p "#{n} is adorable"}
#
# is_how("Mohi", &is_good)
#
# currency culc with lambda & call
# to_eur = lambda{|amount| amount*0.95}
# def convert(amount, convert_lambda)
# convert_lambda.call(amount)
# end
#
# p convert(50, to_eur)
#
# p [75, 63,150].map(&to_eur)
#
#
# enumerables################################################
#
#
# culc
# def add (a,b)
# a+b
# end
# def substract (a,b)
# a-b
# end
# def multiply (a,b)
# a*b
# end
# def divide (a,b)
# a/b
# end
#
# def culc (action )
#   case action
#  when "add"
#  p "add"
#  when "substract"
#  p "substract"
#  when "multiply"
#   p "multiply"
#  when "divide"
#   p "divide"
#  end
# end
#
#
#  culc("multiply")
#
#
#
#
#
# def fizz_buzz (n)
# i = 1
#
# while i<n do
#  case
#  when i%15 ==0  then  p "FizzBuzz"
#  when i%5 ==0 then p "Buzz"
#  when i%3 ==0 then p "fizz"
#  else p i
# end
#   i+=1
# end
# end
#
# fizz_buzz(20)
#
#
# arr = [1,1,2,3,5,7,8,7]
# def custom_first(arr,  num= 0)
# return arr[0] if num==0
# arr[0,num]
# end
# p custom_first(arr)
#
# def custom_last(arr, num=0)
#   return arr[-1] if num ==0
#   arr[-num..-1]
# end
# p custom_last(arr,3)
#
# p [1,2,3] <=> [1,2]                      #=>1
# p [1,2] <=> [1,2,3] \
#
#
# adsd =[1,2,23,5,4,8,6,4,7]
# odd= []
#
#   adsd.each { |num|
#
#   if num.odd?
#      odd<<num
#   end}
#
#   p odd
#
#
# p say = ["good morning ", "good afternoon", "good night"]
# names = ["Shoira", "Kamol", "Elvira" ]
#
#
# say.each do |say|
#   names.each do |names|
#   puts "#{say} #{names}"
#   end
# end
#
# sum of index and its value
#
# arr = [-1,2, 1,2,5, 7,3]
# i = 0
#
# until i==arr.length do
#
# p "i is now #{i}"
# i+=1
# end
#
# arr = [1,1,1,"1",2,1,1]
# i = 0
# until i==arr.length  do
#   unless arr[i].is_a?(Fixnum)
#        next
#   else
#     p arr[i]
#   end
#   i+=1
# end
#
# arr1 = [1,1,1,"1",2,1,1]
# arr2 = ["hi", "bye", "hey"]
#
# def hi(arr1, arr2)
# arr2.each{|i| arr1.unshift(i)}
#
# end
#
# hi(arr1, arr2)
# p arr1
#
#
# def custom_max (arr)
#   n = arr.length
#   sorted = false
#   while sorted == false
#     sorted =true
#    (n-1).times  do |i|
#     next unless arr[i] > arr[i+1]
#     sorted = false
#       arr[i], arr[i+1] = arr[i+1], arr[i]
#       end
#      end
#    p arr.pop(1)
# end
#
#  custom_max([2,1,5,4,2,1])
# def custom_min(arr)
# arr.sort!()
# p arr.shift(1)
# end
#  custom_min([2,1,5,4,2,1])
#
#  def custom_min(arr)
# arr.sort(0)
# end
#
#
# grades = [22,33,54,12,78]
#
# matches= [22,33,54,12,78].select { |number|number.even?}
#
#  p matches
#
#
# p [22,33,54,12,78].reject { |number|number.even?} #=> [22, 54, 12, 78]
#
#
# words = [["KAte", "Lena", "MAria"], [15,24,17]]
# names, years =  words
# p years
# p names
#
# def custom_min(arr1, arr2)
# arr_new = []
# arr1.each do |element|
#   arr_new << element unless arr2.include?(element)
# end
# arr_new
# end
#
#
# custom_and
# def custom_and(arr1,arr2)
# final_arr = []
# arr1.each {|elem|final_arr<< elem if arr2.include?(elem)    }
# final_arr
# end
#
#
# arr1=[1,2,3,4]
# arr2= [1,4,5,6]
# p  custom_and(arr1,arr2)
#
# friends = {
#   Mohigul: "female",
#   Adham: "male"
# }
# Accessing Values
#
#
# def tip_culc(price)
#   tax = price[:total_price] *price[:tax]
#   tip = price[:total_price]  *price[:tip]
#   sum =   price[:total_price] + tax + tip
# end
# p tip_culc(total_price: 20000, tax: 0.07,tip: 0.10 )
#
# friends = {
#   Mohigul: "female",
#   Adham: "male"
# }
#
#
# p friends.reject{|name, gen| gen =="female"}
#
#
# def custom_hash_merge (hash1, hash2)
#   new_hash = hash1.dup
#  hash2.each{|key, val| new_hash[key] = val}
# new_hash
# end
#
#
# fr1 = {
#   Mohigul: "female",
#   Adham: "male"
# }
# fr2 =
# {
#   Nigina: "female",
#   KAmol: "male",
#     Adham: "male"
# }
# p custom_hash_merge(fr1, fr2)
#
#
# str = "Once upon a time shoira shoira was happy yaaay yaaay yaaay"
#
#   def word_count (str)
#   count_hash = Hash.new(0)
#   str_splitted = str.split(" ")
#
#   str_splitted.each do |element|
#   count_hash[element]+=1
#
#   end
#
#   count_hash
#   end
#
#   p word_count(str)
#
# def custom_end_with (str, end_with)
# return true if str[-end_with.length..-1] == end_with
# p str[-end_with.length..-1]
# false
# end
#
#
# p (5.1).class.superclass.superclass.superclass.superclass
#
#
# class Invited
# attr_reader :name
# def add_guests(name)
# name<<guests
# end
#
# @@count = 0
# def initialize(name)
# @name = []
# @@count+=1
# end
#
#
#
# def self.invited_count
# @@count
# end
#
# end
#
# Maria = Invited.new("Maria")
# Elena = Invited.new("Elena")
#  p Invited.invited_count
#
#
# class Hotel
#   include Enumerable
#
#   attr_reader :hotel_floor_guests
#   attr_accessor :hotel_name
#
# def   initialize(hotel_name, hotel_floor_guests)
#       @hotel_floor_guests =[]
#       @hotel_name = hotel_name
# end
#
# def add_guests(guests)
#   hotel_floor_guests<< guests
# end
#
# def each
#   hotel_floor_guests.each do |guests|
#     yield guests
#   end
# end
# end
#
# day_1 = Hotel.new("residence plaza", "floor_one")
# day_2 = Hotel.new("Meridian hotel", "floor_two")
#
# day_1.add_guests("Grays")
# day_1.add_guests("westerns")
# day_2.add_guests("us")
# day_2.add_guests("southerns")
#
# day_1.select{|guest| guest.include?("r")}
#
# day_1.hotel_name = "grand mir"
# p day_1.hotel_floor_guests
#
#
# class Pets
# attr_reader :name
#   def initialize
#     @name = rand_name
#     end
#     private
#     def rand_name
#      name = ("a".."z").to_a.sample(5).join
#     end
#   end
#
# pet = Pets.new
# p pet.rand_name
#
# class Dates
#
#  def initialize (birth_year)
#  @age = 2021 - birth_year
#  end
#
#
#  def good_match?(person)
#   self.age > person.age ? "you are a good match":  "your partner is too old"
#  end
#  protected
#  attr_reader :age
#
# end
#
# female = Dates.new(1992)
# male = Dates.new(1988)
#
# p female.good_match?(male)
#
# class Animals
# include Enumerable
# attr_reader :type
# attr_reader :speed
#
# def initialize
#   @type= []
#   @speed =speed
# end
#
# def add_animal(animal)
# type<< animal
# end
#
#
# def each
# type.each{|animal| yield animal}
# end
# end
#
# mammals = Animals.new
#
# mammals.add_animal("tiger")
# mammals.add_animal("lion")
# p mammals.type
# p mammals.select{|animal|animal.include?("r")}
#
#
# class Test
#   attr_accessor :answer, :prompt
#   def initialize (prompt, answer)
#   @prompt = prompt
#   @answer  = answer
#   end
# end
#
# q1 = "today is \n(A)Mon\n(B)Tue \n(C)Wed"
# q2 = "tomorrow is \n(A)Mon\n(B)Tue \n(C)Wed"
#
# questions = [
#     Test.new(q1, "a"),
#     Test.new(q2, "b")
# ]
#
# def run_test(questions)
# answer = ""
# score =0
#
#
# for ques in questions do
#  puts ques.prompt
#  answer = gets.chomp
#    score+=1 if answer==ques.answer
# end
#
# return score
#
# end
#
# p run_test(questions)
