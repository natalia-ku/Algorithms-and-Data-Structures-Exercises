# Given an array of n positive integers. Write a program to
# find the sum of maximum sum subsequence of the given array
# such that the intgers in the subsequence are sorted in increasing order.
def find_sum(array)
  max = 0
  temp_array = array.clone
  (1...array.length).each do |i|
    (0...i).each do |j|
      if (array[i] > array[j] && temp_array[i] < temp_array[j] + array[i])
        temp_array[i] = temp_array[j] + array[i]
      end
    end
  end
  (0...array.length).each do |k|
    max  = temp_array[k] if temp_array[k] > max
  end
  return max
end

a = [1, 101, 2, 3, 100, 4, 5] # 106
b = [3, 4, 5, 10] # 22
c = [10, 5, 4, 3] # 10
puts find_sum(a)
puts find_sum(b)
puts find_sum(c)

def find_max_subsequence(array)
end
