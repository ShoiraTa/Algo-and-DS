def searching(arr, el)
  arr.each do |val|
    return val if val == el
  end
end

puts searching([1, 2, 3, 4, 7, 6], 4)
