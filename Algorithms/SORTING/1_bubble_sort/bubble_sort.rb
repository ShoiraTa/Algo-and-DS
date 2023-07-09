def bubble_sort(arr)
  swapped = true
  while swapped
    swapped = false
    (0...arr.length - 1).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
  end
  arr
end
p bubble_sort([37, 48, 24, 28]) #=> [1, 3, 2, 4, 5, 6]
