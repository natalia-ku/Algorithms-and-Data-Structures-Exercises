# Majority Element: A majority element in an array A[] of size n is an element that appears more than n/2 times (and hence there is at most one such element).
#
# Write a function which takes an array and emits the majority element (if it exists), otherwise prints NONE as follows:
#
#        I/P : 3 3 4 2 4 4 2 4 4
#        O/P : 4
#
#        I/P : 3 3 4 2 4 4 2 4
#        O/P : NONE

def find_majorty_element(array)
  maj_index = 0
  count = 1
  (1...array.length).each do |i|
    if array[maj_index] == array[i]
      count += 1
    else
      count -=1
    end
    if count == 0
      maj_index = i
      count = 1
    end
  end
  return array[maj_index]
end

array = [ 3, 3, 4, 2, 4, 4, 2, 4, 4]
puts find_majorty_element(array)
