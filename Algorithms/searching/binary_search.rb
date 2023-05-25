require 'pry'

# def binary(arr, target)
#   first = 0
#   final = arr.length - 1
#   mid = (first + final) / 2
#   while arr[mid] != target && first <= final
#     if arr[mid] > target
#       final = mid - 1
#       mid = (first + final) / 2
#     else
#       first = mid + 1
#       mid = (first + final) / 2
#     end
#   end
#   arr[mid] == target ? arr[mid] : -1
# end

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

puts binary([1, 2, 3, 4, 5], 3)
