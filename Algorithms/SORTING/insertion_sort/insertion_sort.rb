def insertion_sort(arr)
  0.upto(arr.length - 1) do |i|
    j = i
    while j.positive?
      break unless arr[j] < arr[j - 1]

      arr[j], arr[j - 1] = arr[j - 1], arr[j]

      j -= 1
    end
  end
  arr
end

p insertion_sort([1, 4, 3, 7, 2])
