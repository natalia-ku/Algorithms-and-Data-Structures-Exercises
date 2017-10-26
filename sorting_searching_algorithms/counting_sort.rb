#Counting sort is a sorting technique based on keys
#  between a specific range. It works by counting
# the number of objects having distinct key values
#(kind of hashing). Then doing some arithmetic to
# calculate the position of each object in the output sequence.

# But data should be only in specific range

# IT IS O(n) time complexity!!!

def counting_sort(array, max)
  sorted_array = []
  num_count = Array.new(max+1, 0)
  for num in array
    num_count[num] += 1
  end
  (0...num_count.length).each do |i|
    count = num_count[i]
    (0...count).each do |j|
      sorted_array << i
    end
  end
  return sorted_array
end

array = [1, 4, 1, 2, 7, 5, 2]
print counting_sort(array, 7)
