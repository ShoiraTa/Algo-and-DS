def sum_pairs(ints, s)
  nums = []
  ints.each.with_index do  |val, i|
    ints.delete_at(i)
    ints.each do |num|  

      nums.push(val, num) if val+num == s 
    end
  end
  nums.empty? ?  nil : nums
end

# moveZeros
def moveZeros(arr) 
  occurance = arr.count(0)
  arr.delete(0)
  occurance.times{ arr.insert( -1, 0)}
  arr
end

# Simple Pig Latin
def pig_it text
  text.split.map{|word| word.count("a-zA-Z") > 0 ? word.chars.rotate.join + 'ay'  : word.chars.rotate.join}.join(' ')
end

# Where my anagrams at?
def anagrams1(word, words)
  final = []
  words.each do |anagram|
    final << anagram if anagram.chars.all? {|char| word.chars.include?(char)}
  end
  final
end

# Where my anagrams at?
def anagrams(word, words)
  words.select do |anagram|
   anagram.chars.sort == word.chars.sort
  end
end

# First non-repeating character
def  first_non_repeating_letter(s) 
  return '' if s.empty?
  s.chars.each{|char|  return  char if s.downcase.chars.count(char.downcase) == 1 }
end

# Maximum subarray sum
def max_sequence(arr)
  return 0 if arr.empty? || arr.all? {|n| n < 0}
  max = 0
  current_sum = 0
  arr.each do |num|
    current_sum = [num, current_sum + num].max
    max = [max, current_sum].max
  end

  max
end


# Zero-plentiful Array
def zero_plentiful(arr)
  # your smart code here
end


# The Hashtag Generator
def generateHashtag(str)
 str_splitted = str.delete(' ').split('')
 unless str_splitted.length >= 140 || str.count("a-zA-Z") < 1 || str.empty?
  str.split.map{|w| w.capitalize }.unshift('#').join
 else 
  false 
 end
end

# RGB To Hex Conversion
def rgb(r, g, b)
  @hex = ("A".."B").to_a
  @res = []

  def divide(val)
    val = val < 0 ? 0 : val
    n =  "16.#{val}".to_f.round(2)
    getHexVal((val / n).round)
    p (val / n).round
    getHexVal(((val / n) - (val / n).round) * 16)
  end

  def getHexVal(val )
    @res << (val >= 10 ?  @hex[val-10] : val )
  end

  divide(r)
  # divide(g, hex)
  # divide(b, hex)

  @res.join 
end