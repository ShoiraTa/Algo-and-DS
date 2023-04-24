# frozen_string_literal: true

a = 10
b = 5

# add a and b
p a + b

# subtract b from a
p a - b

#  of multiplying a times b
p a * b

# of dividing a by b
p a / b

#  remainder of dividing a by b using the modulo operator
p a % b

#  dividing a by b as a float, rather than an integer
p a.to_f / b

# converting a string into an integer
p string.to_i

# true if the number is even
p number.even?

#  true if the number is odd
p number.odd?

# Swapping variables
a, b = b, a

# upto downto
4.downto(1) { |a| puts a * 3 }

# step
1.step(10, 2) { |n| puts n }

# Pararel variable asignment
a = 10
b = 20
c = 30
