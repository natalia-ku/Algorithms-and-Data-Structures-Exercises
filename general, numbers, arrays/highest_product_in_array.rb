# Find a pair with maximum product in array of Integers
# Given an array with both +ive and -ive integers, return
#a pair with highest product.
# Examples:
#
# Input: arr[] = {1, 4, 3, 6, 7, 0}
# Output: {6,7}
#
# Input: arr[] = {-1, -3, -4, 2, 0, -5}
# Output: {-4,-5}



def find_highest_product_pair(array)
  array.sort!
  n = array.length - 1
  return find_max(array[0]*array[1],array[n]*array[n-1])
end

def find_max(a,b)
  return a if a > b
  return b
end



def find_highest_product_pair2(array)
  max_pos = -1000000
  second_max_pos = -1000000
  min_negative = -1000000
  second_min_negative = -1000000

  (0...array.length).each do |i|
    if array[i] > max_pos
      second_max_pos = max_pos
      max_pos = array[i]
    elsif  array[i] > second_max_pos
      second_max_pos = array[i]
    end

    if array[i] < 0 && array[i].abs > min_negative.abs
      second_min_negative = min_negative
      min_negative = array[i]
    elsif
      array[i] < 0 && array[i].abs > second_min_negative.abs
      second_min_negative = array[i]
    end
  end
  if min_negative*second_min_negative > max_pos*second_max_pos
    puts "Pair is min #{min_negative} #{second_min_negative}"
  else
    puts "Pair is #{max_pos} #{second_max_pos}"
  end
end




array = [1, 4, 3, 6, 7, 0]
puts find_highest_product_pair(array)

array = [-1, -3, -4, 2, 0, -5]
puts find_highest_product_pair(array)




array = [1, 4, 3, 6, 7, 0]
puts find_highest_product_pair2(array)

array = [-1, -3, -4, 2, 0, -5]
puts find_highest_product_pair2(array)
