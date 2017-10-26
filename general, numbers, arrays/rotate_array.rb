def rotate(array, d)
  temp_array = []
  (0...d).each do |i|
    temp_array << array[i]
  end
  n = array.length - d
  k = d
  n.times do
    array[k-d] = array[k]
    k += 1
  end

  m = array.length - d
  n = 0
  m.upto(array.length-1) do |j|
    array[j] = temp_array[n]
    n += 1
  end
return array
end

array = [1,2,3,4,5,6,7]
print rotate(array, 3) # rotate array left by 3 elements
