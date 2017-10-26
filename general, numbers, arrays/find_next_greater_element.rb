# Next Greater Element
# Given an array, print the Next Greater
# Element (NGE) for every element. The Next
#greater Element for an element x is the
#first greater element on the right side
#of x in array. Elements for which no greater
#element exist, consider next greater element
#as -1.


def find_next_greater_element(array)
  (0...array.length).each do |i|
    smallest_after = 100000
    (i...array.length).each do |j|
      if array[j] > array[i] && array[j] < smallest_after
        smallest_after = array[j]
      end
    end
    puts "Next greatest for #{array[i]} is #{smallest_after}"
  end



end


find_next_greater_element([4,5,2,25])
