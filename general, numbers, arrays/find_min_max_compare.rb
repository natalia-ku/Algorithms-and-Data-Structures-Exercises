# find min and max element in array using minimum
#comparisons


def find_min_max1(array)
  max = array[0]
  min = array[0]
  (1...array.length).each do |i|
    if array[i] > max
      max = array[i]
    elsif array[i] < min
      min = array[i]
    end
  end
  puts "Max: #{max}, Min: #{min}"
end


def find_min_max2(array)
  max = -10000000
  min = 10000000
  n = array.length
  odd = array.length & 1
  odd = true
  n-=1 if odd
  (0...n).step(2).each do |i|
    maximum = array[i]
    minimum = array[i]
    if array[i] > array[i+1]
      minimum = array[i+1]
      maximum = array[i]
    else
      minimum = array[i]
      maximum = array[i+1]
    end
    if maximum > max
      max = maximum
    end
    if minimum < min
      min = minimum
    end
  end
  if odd
    if array[array.length-1] > max
      max = array[n]
    end
    if array[n] < min
      min = array[n]
    end
  end
  puts "Max: #{max}, Min: #{min}"
end


array = [5,7,2,4,6]
find_min_max1(array)
find_min_max2(array)
# puts find_min_max(array)
#
# puts find_min_max(array)
