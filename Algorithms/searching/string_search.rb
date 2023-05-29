require 'pry'

def str_search(long_s, short_s)
  counter = 0
  long_s.chars.each_with_index do |_l_el, l_index|
    short_s.chars.each_with_index do |sh_el, sh_index|
      break if sh_el != long_s[sh_index + l_index]

      counter += 1 if sh_index == short_s.length - 1
    end
  end
  counter
end

p str_search('hellolo', 'oo')
