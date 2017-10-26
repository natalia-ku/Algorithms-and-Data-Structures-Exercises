# Given a sorted array and a number x, find the pair
# in array whose sum is closest to x
# Examples:
# Input: arr[] = {10, 22, 28, 29, 30, 40}, x = 54
# Output: 22 and 30
#
# Input: arr[] = {1, 3, 4, 7, 10}, x = 15
# Output: 4 and 10


# THIS IS NOT WORKING!!!


def find_pair(array, sum)
  l = 0
  r = array.length-1
  difference = 1000000
  index_r = -1
  index_l = -1
  while l < r
    if (array[l] + array[r] - sum).abs < difference
      difference = array[l] + array[r] - sum
      index_l = l
      index_r = r
    end
    if array[l] + array[r] < sum
      l += 1
    else
      r -= 1
    end
  end
  puts "Left result index: #{index_l}, Right result index: #{index_r}"
end


array = [1,3,4,7,10, 14]
find_pair(array, 15)
