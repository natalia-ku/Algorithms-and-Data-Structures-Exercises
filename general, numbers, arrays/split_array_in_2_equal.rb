# Split an array into two equal Sum subarrays
# Given an array of integers greater than zero, find if it
# is possible to split it in two subarrays (without reordering
#the elements), such that the sum of the two subarrays is the same.
#Print the two subarrays.
#
# Examples:
#
# Input : Arr[] = { 1 , 2 , 3 , 4 , 5 , 5  }
# Output :  { 1 2 3 4 }
#           { 5 , 5 }
#
# Input : Arr[] = { 1 , 2 ,3 , 4 }
# Output :Not Possible

def split_array(array)
  left_sum = 0
  count = 0
  (0...array.length).each do |i|
    left_sum += array[i]
    right_sum = 0
    (i+1...array.length).each do |j|
      right_sum += array[j]
      if left_sum == right_sum
        count += 1
        # puts "#{left_sum} == #{right_sum}"
      end
    end
  end
  if count > 0
    return true
  end
end
#
#
# array = [ 1 , 2 , 3 , 4 , 5 , 5 ]
#  split_array(array)


array = [ 1 , 2 ,3 , 4 ]
 puts split_array(array)
