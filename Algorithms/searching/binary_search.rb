require 'pry'

def binary(arr, item)
  start = 0
  final = arr.length - 1
  while start <= final
    mid = (start + final) / 2
    if arr[mid] == item
      return mid
    elsif arr[mid] > item
      final = mid - 1
    else
      start = mid + 1
    end
  end
  -1
end
