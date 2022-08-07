#numeric ranges
n = 0..20  # including 20
m = 0...20 # excluding 20

# last    
n.last(4) #=> [17, 18, 19, 20]

#first 
n.first(4) #=> [1,2,3,4]

# alphabetical range
alphabet = "a".."z"

#size
n.size

# include? 
p n.include?(2)

#generate a random num
 rand

# round random num
p rand.round(2)
p rand.round(1)

#random with  range

p rand(100)

#range to arr .to_a

range1= 1..20
range1.to_a
