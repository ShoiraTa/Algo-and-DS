# def merge_naive(arr1, arr2)
#   i =0
#   j =0
#   arr=[]
#   while i < arr1.length && j < arr2.length
#     if arr1[i] < arr2[j]
#       arr.push(arr1[i])
#       i+=1
#       else
#         arr.push(arr2[j])
#       j+=1
#     end
#   end

#   while i < arr1.length
#     arr.push(arr1[i])
#     i+=1
#   end

#   while j < arr2.length
#     arr.push(arr2[j])
#     j+=1
#   end

#   arr
# end

def merge_arr(arr1, arr2)
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

  half = arr.length / 2
  left = split(arr.slice(0...half))
  right = split(arr.slice(half...arr.length))

  merge_arr(left, right)
end
