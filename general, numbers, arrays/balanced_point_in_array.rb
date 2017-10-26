# Equilibrium index of an array is an index such that the sum of elements at lower indexes is equal to the sum of elements
# at higher indexes. For example, in an arrya A:
# A[0] = -7, A[1] = 1, A[2] = 5, A[3] = 2, A[4] = -4, A[5] = 3, A[6]=0
# 3 is an equilibrium index, because:
# A[0] + A[1] + A[2] = A[4] + A[5] + A[6]

# O(n^2):
def balanced_point(array)
  (0...array.length).each do |i|
    left_sum =  0
    right_sum = 0
    (0...i).each do |j|
      left_sum += array[j]
    end
    (i+1...array.length).each do |j|
      right_sum += array[j]
    end
    if left_sum == right_sum
      return i
    end
  end
  return -1
end

# O(n):
def balanced_point2(array)
  sum = 0
  left_sum = 0
  array.each do |number|
    sum += number
  end
  (0...array.length).each do |i|
    sum -= array[i]
    if left_sum == sum
      return i
    end
    left_sum += array[i]
  end
  return -1
end
array = [-7, 1, 5, 2, -4, 3, 0]

puts balanced_point(array)
puts balanced_point2(array)
