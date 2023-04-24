# frozen_string_literal: true

# yield/////////////////////////////////////////////////////////////

def say_name(name)
  puts 'start'
  return unless block_given?

  yield('Eric')
  yield(name)
end

say_name('Martin') { |n| puts "his name is #{n}" }

def double(n)
  yield(n)
end

double(2) { |n| puts n * 2 }

# Procs////////////////////////////////////////////////////
a = [1, 2, 3]
b = [4, 5, 6]
c = [7, 8, 9]

cube = proc { |n| n**3 }

a_cube, b_cube, c_cube = [a, b, c].map { |n| n.map(&cube) }

# Proc and Yield ///////////////////////////////////////////////////////
def greeter
  yield
end

phrase = proc { puts 'Hello there!' }

greeter(&phrase)

# callong Proc/////////////////////////////////////////////////////////////////////////
hi = proc {
  puts 'Hello!'
}
hi.call

# symbols & procs////////////////////////////////////////////////////////////
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings_array = numbers_array.map(&:to_s)

# Lambda lambda { |param| block }///////////////////////////////////////////////////
strings = %w[leonardo donatello raphael michaelangelo]
symbolize = ->(n) { n.to_sym }
symbols = strings.collect(&symbolize)
print symbols

# is a symbol? lambda
my_array = ['raindrops', :kettles, 'whiskers', :mittens, :packages]
symbol_filter = ->(s) { s.is_a?(Symbol) }
symbols = my_array.select(&symbol_filter)
p symbols

# is a symbol? block
symbols_block = my_array.select { |p| p.is_a?(Symbol) }
p symbols_block

# is a symbol? Proc
symbols_proc = proc { |n| n.is_a?(Symbol) }
p my_array.select(&symbols_proc)
