# Arrange given numbers to form the biggest number
# Given an array of numbers, arrange them in a way that yields
# the largest value. For example, if the given numbers are
# {54, 546, 548, 60}, the arrangement 6054854654 gives the largest
#value. And if the given numbers are {1, 34, 3, 98, 9, 76, 45, 4},
#then the arrangement 998764543431 gives the largest value.



def find_max(a,b)
  a > b ? a : b
end

def create_biggest_number(array)
  temp = 0
  l = array.length - 1
  (1..l).each do |i|
    i.downto(1) do |j|
      a = array[j].to_s
      b = array[j-1].to_s
      x = a + b
      y = b + a
      if x > y
        temp = array[j]
        array[j] = array[j-1]
        array[j-1] = temp
      end
    end
  end
  puts "Sorted array:"
  puts array
end


array = [54, 546, 548, 60]
puts create_biggest_number(array)
array = [1, 34, 3, 98, 9, 76, 45, 4]
puts create_biggest_number(array)
