def pivot(arr, start=0)
  pivot = arr[start]
  swapIdx =  start
  (1...arr.length).each do |i|
    if arr[i] < pivot
      arr[i], arr[swapIdx+1] =  arr[swapIdx+1], arr[i]
      swapIdx += 1
    end
  end
  arr[0], arr[swapIdx] = arr[swapIdx], arr[0]
  arr
end

def pivot2(arr)
  pivot= arr[0]
  swapIndx = 0

  (1...arr.length).each do |i|
    if arr[i] < pivot
      arr[swapIndx+1] , arr[i] =  arr[i], arr[swapIndx+1]
      swapIndx += 1
    end
  end
  arr[swapIndx] , arr[0] =  arr[0], arr[swapIndx]
  arr
end


p pivot2([5,8,1,2,3,2,6,4,9])