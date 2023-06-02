require 'pry'

def selection_sort(arr)
  0.upto(arr.length-1) do |i|
    min_index = i
    (i+1).upto(arr.length-1) do |j|
      min_index = j if arr[min_index] > arr[j]
    end
    arr[i], arr[min_index] = arr[min_index],arr[i]  if min_index != i 
  end
  arr
end

p selection_sort([1,2,6,2,8,4])