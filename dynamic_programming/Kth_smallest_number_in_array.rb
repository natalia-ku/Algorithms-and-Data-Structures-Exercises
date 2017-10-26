#Find the kth SMALEST element in an unsorted array.
# Note that it is the kth SMALEST element in the sorted order, not the kth distinct element.
#Note: You may assume k is always valid, 1 ≤ k ≤ array's length.


# 1) Modify Bubble Sort to run the outer loop at most k times.
# ANOTHER APPROACH :SORT UNTIL K-TH ELEMENT(insertion sort)
def kth_smallest(array,left, right, k)
  if k > 0 && k <= right - left + 1
    pos = partition(array, left, right)
    if pos-left == k-1
      return array[pos]
    end
    if pos - left > k-1
      return kth_smallest(array, left, pos-1, k)
    else
      return kth_smallest(array, pos+1, right, k-pos+left-1)
    end
  else
    puts "k is more than number of elements in array"
  end
end

def partition(array, left, right)
  x = array[right]
  i = left
  (left...right).each do |j|
    if array[j] <= x
      temp = array[i]
      array[i] = array[j]
      array[j] = temp
      i += 1
    end
  end
  temp = array[i]
  array[i] = array[right]
  array[right] = temp
  return i
end


array =  [3,2,1,5,6,4]
puts kth_smallest(array, 0, array.length - 1 , 2)


array =  [23,12,2,5,6,2]
puts kth_smallest(array, 0, array.length - 1 , 2)
