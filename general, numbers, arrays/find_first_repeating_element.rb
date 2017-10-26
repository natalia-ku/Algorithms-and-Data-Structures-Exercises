#Given an array of integers, find the first repeating element in it.
# We need to find the element that occurs
# more than once and whose index of first occurrence is smalles

#
# Input:  arr[] = {10, 3, 4, 3, 5, 6}
# Output: 5 [5 is the first element that repeats]

# O(N^2)
def find_element(array)
  (0...array.length).each do |i|
    count = 0
    (0...array.length).each do |j|
      count += 1 if array[i] == array[j]
      return array[i] if count == 2
    end
  end
end
array  = [10, 3, 4, 3, 5, 6]
# puts find_element(array)



def find_element2(array)
  storage = Hash.new
  min = -1
  n = array.length-1
  n.downto(0).each do |i|
    if storage.keys.include?array[i]
      min = i
    else
      storage[array[i]] = 1
    end
  end
  print  storage
  return array[min]
end

array  = [10, 5, 3, 4, 3, 5, 9]
puts find_element2(array)
