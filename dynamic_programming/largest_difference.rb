#//Given an array arr[] of integers,
# find out the difference between any two elements such that
# larger element appears after the smaller number in arr[].
#Examples: If array is [2, 3, 10, 6, 4, 8, 1] then returned value should
# be 8 (Diff between 10 and 2). If array is [ 7, 9, 5, 6, 3, 2 ] then
#returned value should be 2 (Diff between 7 and 9)


def largest_difference(array)
  max_diff = array[1] - array[0]
  (0...array.size).each do |i|
    (i+1...array.size).each do |j|
      if array[j] - array[i] > max_diff
        max_diff = array[j] - array[i]
      end
    end
  end
  return max_diff
end


def largest_difference(array)
  max_diff = array[1] - array[0]
  min_element = array[0]
  (1...array.size).each do |i|
    if array[i] - min_element > max_diff
      max_diff = array[i] - min_element
    end
    if array[i] < min_element
      min_element = array[i]
    end
  end
  return max_diff
end



array = [1,2,4,3,5,5,2,9,4]
puts largest_difference(array)
