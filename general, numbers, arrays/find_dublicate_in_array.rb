#Given an array of n elements which contains elements from 0 to n-1,
# with any of these numbers appearing any number of times.
# Find these repeating numbers in O(n) and using only constant memory space.

def find_dublicates(array)
  (0...array.size).each do |i|
    if array[array[i].abs] >= 0
      array[array[i].abs] = - array[array[i].abs]
    else
      print array[i].abs
      print " "
    end
  end
end

array = [1,2,3,1,3,6,6]
find_dublicates(array)
