# Given an unsorted array of nonnegative integers, find a continous subarray which adds to a given number.
#
# Examples:
#
# Input: arr[] = {1, 4, 20, 3, 10, 5}, sum = 33
# Ouptut: Sum found between indexes 2 and 4
#
# Input: arr[] = {1, 4, 0, 0, 3, 10, 5}, sum = 7
# Ouptut: Sum found between indexes 1 and 4
#
# Input: arr[] = {1, 4}, sum = 0
# Output: No subarray found

def find_subarray(array, number)
  current_sum = array[0]
  start = 0
  (1...array.length).each do |i|
    while current_sum > number && start < i-1
      current_sum = current_sum - array[start]
      start += 1
    end
    if current_sum == number
      puts "Sum was found between indexes #{start} and #{i-1}"
      return 1
    end
    if i < array.length
      current_sum = current_sum + array[i]
    end
  end
  puts "No subarray was found"
end

array = [1, 4, 20, 3, 10, 5]
find_subarray(array, 33)

array = [1, 4, 0, 0, 3, 10, 5]
find_subarray(array, 7)
