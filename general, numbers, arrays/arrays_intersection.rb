#Given two SORTED arrays, write a function to compute their intersection.
#Each element in the result should appear as many times as it shows in both arrays.

# For SORTED array:
def find_intersection(array1, array2)
  i = 0
  j = 0
  result = []
  while i < array1.length && j < array2.length
    if array1[i] < array2[j]
      i += 1
    elsif array2[j] < array1[i]
      j += 1
    else
      result << array2[j]
      j += 1
      i += 1
    end
  end
  return result
end

nums1 = [2, 3, 4, 5, 7, 8, 20, 23]
nums2 = [2, 4, 7, 14, 20, 36]
print find_intersection(nums1, nums2)
puts
nums1 = [1, 3, 4, 5, 7]
nums2 = [2, 3, 5, 6]
print find_intersection(nums1, nums2)
puts
