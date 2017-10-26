# Find the Number Occurring Odd Number of Times
# Given an array of positive integers. All numbers occur even number of times except
# one number which occurs odd number of times. Find the number in O(n) time & constant space.
# Example:
# I/P = [1, 2, 3, 2, 3, 1, 3]
# O/P = 3
#
# The Best Solution is to do bitwise XOR of all the elements.
#   XOR of all elements gives us odd occurring element.
#    Please note that XOR of two elements is 0 if
#     both elements are same and XOR of a number x with 0 is x.
#


def find_number(array)
  result = 0
  (0...array.length).each do |i|
    result = result ^ array[i]
  end
  return result
end


array = [1, 2, 3, 2, 3, 1, 3]
puts find_number(array)
