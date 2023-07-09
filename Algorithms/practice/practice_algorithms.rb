require 'pry'
# binary SEARCH,
def binary_search(arr, elem)
  left_i = 0
  right_i = arr.length - 1
  while left_i <= right_i
    mid = (left_i + right_i) / 2
    return mid if arr[mid] == elem

    if arr[mid] < elem
      left_i = mid + 1
    else
      right_i = mid - 1
    end
  end
  -1
end
p binary_search([1, 3, 4, 5, 7, 8], 8)

# bubble sort
def bubble_sort(arr)
 swapped = true

 while swapped 
  swapped = false
  (0...arr.length - 1).each do |i|
    if arr[i+1] < arr[i]
      arr[i+1], arr[i] = arr[i], arr[i+1]
      swapped = true
    end
  end
 end
 arr
end
p bubble_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])

# selection sort
def selection_sort(arr)
  (0...arr.length - 1).each do |i|
    current = i
    (i + 1...arr.length).each do |j|
      if arr[j] < arr[current]
        current = j
      end
    end
    arr[current], arr[i] = arr[i], arr[current] if current != i
  end
  arr
end
p selection_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])

# insertion sort
def insertion_sort(arr)
  (0...arr.length).each do |i|
    while i.positive?
      break if arr[i - 1] < arr[i]

      arr[i - 1], arr[i] = arr[i], arr[i - 1]
      i -= 1
    end
  end
  arr
end

p insertion_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])

# merge sort
def merge(arr1, arr2)
  arr = []
  while !arr1.empty? && !arr2.empty?
    if arr1[0] < arr2[0]
      arr.push(arr1.shift)
    else
      arr.push(arr2.shift)
    end
  end
  arr.concat(arr1).concat(arr2)
end

def split(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = split(arr.slice(0...mid))
  right = split(arr.slice(mid...arr.length))

  merge(left, right)
end

p split([1, 12, 13, 15, 3, 4, 5, 7, 8])

# quick sort
def quick_sort(arr)
  return arr if arr.length <= 1

  pivot = arr.shift
  left, right = arr.partition { |val| val < pivot }
  quick_sort(left) + [pivot] + quick_sort(right)
end

p quick_sort([1, 12, 13, 15, 3, 4, 5, 7, 8])

# Heap Sort
# Bucket Sort
# Radix Sort
