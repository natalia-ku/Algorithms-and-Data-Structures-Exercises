#Find the contiguous subarray within an array (containing at least one number)
#which has the largest sum.
#TIPS:We should ignore the sum of the previous n-1 elements if
# nth element is greater than the sum.

def max_subarray_sum(array)
  new_sum = max = array[0]
  (1...array.length).each do |i|
    new_sum = find_max(new_sum + array[i], array[i])
    max = find_max(max, new_sum)
  end
  return max
end

def find_max(a,b)
  return a > b ? a : b
end

array = [-10, 2, 3, -2, 0, 5, -15]
array1 = [-2,1,-3,4,-1,2,1,-5,4]
puts max_subarray_sum(array) #8
puts max_subarray_sum(array1) #6
