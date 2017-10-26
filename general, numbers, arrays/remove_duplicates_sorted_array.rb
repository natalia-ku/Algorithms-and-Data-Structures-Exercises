# Given a sorted array, remove the duplicates in place
#such that each element appear only once.
#For example, Given input array A = [1,1,2],
#Your function should return now [1,2].


def remove_duplicates(array)
  if array.length < 2
    return array
  end
  j = 0
  i = 1
  while i < array.length
    if array[i] == array[j]
      i += 1
    else
      j += 1
      array[j] = array[i]
      i += 1
    end
  end
  output = Array.new(j, 0)
  (0..output.length).each do |k|
    output[k] = array[k]
  end
  return output
end

array = [1,1,2,3,4,5,5,6]
print remove_duplicates(array)
puts
array = ["A", "A", "A", " ", "B", "B", "B"]
print remove_duplicates(array)
puts
array = [8,8,8,8,9,9,10,11,23,56,78,90,90,90]
print remove_duplicates(array)
puts
array = [0,0,0,1,2,3,4,8,8,8,8,9,9,9,9]
print remove_duplicates(array)
