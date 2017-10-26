# Input:  arr[] = {3, 7, 90, 20, 10, 50, 40}, k = 3
# Output: Subarray between indexes 3 and 5
# The subarray {20, 10, 50} has the least average
# among all subarrays of size 3.
#
# Input:  arr[] = {3, 7, 5, 20, -10, 0, 12}, k = 2
# Output: Subarray between [4, 5] has minimum average

def find_subaray(array, k)
  min_sum = 1000000
  (0..array.length-k).each do |i|
    current_sum = array[i]
    n = i+1
      (n...n+k-1).each do |j|
        current_sum += array[j]
      end
    if current_sum < min_sum
      min_sum = current_sum
    end
  end
  return min_sum
end


# array = [3, 7, 90, 20, 10, 50, 40]
# k = 3
# puts find_subaray(array, k)
#
#
# array = [3, 7, 5, 20, -10, 0, 12]
# k = 2
# puts find_subaray(array, k)
#


def find_subaray2(array, k)
  res_index = 0
  current_sum = 0
  (0...k).each do |j|
    current_sum += array[j]
  end
  min_sum = 100000
  (k...array.length).each do |i|
    current_sum = current_sum + array[i] - array[i-k]
    if current_sum < min_sum
      res_index = i-k
    end
  end
  puts array[res_index]
  puts array[res_index+k-1]
  puts
end


array = [3, 7, 90, 20, 10, 50, 40]
k = 3
 find_subaray2(array, k)

#
# array = [3, 7, 5, 20, -10, 0, 12]
# k = 2
# puts find_subaray2(array, k)
