#Search an element in a sorted and rotated array
#An element in a sorted array can be found in O(log n)
#time via binary search. But suppose we rotate an
# ascending order sorted array at some pivot unknown
#to you beforehand. So for instance, 1 2 3 4 5 might
#become 3 4 5 1 2. Devise a way to find an element
# in the rotated array in O(log n) time.
# ALL ELEMEST ARE DistINcT


def find_element(array, target, low, high)
  return -1 if high < low
  mid = (low + high)/2
  return mid if target == array[mid]
  if array[low] <= array[mid]
    if target >= array[low] && target <= array[mid]
      return find_element(array, target, low, mid-1)
    end
    return find_element(array, target, mid+1, high)
  end
  if target >= array[mid] && target <= array[high]
    return   find_element(array, target, mid+1, high)
  end
  return find_element(array, target, low, mid-1)
end


array = [3,4,5,6,1,2]
puts find_element(array, 6, 0, 5)
