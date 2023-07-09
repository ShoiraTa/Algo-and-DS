def quick_sort(arr)
  return arr if arr.length <= 1

  pivot = arr.shift
  left, right = arr.partition { |el| el < pivot }

  quick_sort(left) + [pivot] + quick_sort(right)
end

p quick_sort([5, 8, 1, 3, 2, 2])
