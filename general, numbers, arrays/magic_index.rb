#A magic index in an array A[0…n-1] is defined to be an index such
# that A[i] = i. Given a sorted array of distinct integers,
# write a method to find a magic index if one exists


def find_magic_index(array, low, high)
  if high >= low
    mid = (low + high)/2
    return mid if mid == array[mid]
    if mid > array[mid]
      return find_magic_index(array, mid+1, high)
    else
      return find_magic_index(array, low, mid-1)
    end
  end
end

array = [0,1,2,7,8,9,12,56,92]
puts find_magic_index(array, 0, array.length-1)
