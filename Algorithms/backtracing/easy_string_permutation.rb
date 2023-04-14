# This example gives all possible combinations of str chars
# if str is "ab" output is:
#  ab 
#  ba 

def str_mutation(str, used =[], current="")
  if str.length == current.length
    puts "one combination: #{current}"
    return
  end

  str.chars.each_with_index do |char, i|
    next if used[i]
    used[i] = true
    current+=char
    str_mutation(str, used, current)
    used[i] = false
    current.slice!(-1)
  end
end

str_mutation("abc")