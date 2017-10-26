#Find the sum of the two largest integers in an array

def find_sum(array)
  flag = 0
  max1 = array[0]
  (0...array.length).each do |i|
    if array[i] > max1
      max1 = array[i]
      flag = i
    end
  end
  array.delete_at(flag)
  max2 =array[0]
  (0...array.length).each do |i|
    if array[i] > max2
      max2 = array[i]
      flag = i
    end
  end
return max1 + max2
end

a =[19, 4, 23, -19, 100, 9]
# puts find_sum(a)


def find_sum2(array)
  first = 0
  second = 0
  if array[0] > array[1]
    first = array[0]
    second = array[1]
  else
    first = array[1]
    second = array[0]
  end
  (2...array.length).each do |i|
    if array[i] > first
      second = first
      first = array[i]
    elsif array[i] > second #If array[i] is in between first and second then update second
      second = array[i]
    end
  end

return first + second
end

a =[19, 4, 23, -19, 100, 9]
puts find_sum2(a)
