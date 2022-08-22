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