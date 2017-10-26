# Find smallest misssing number in sorted array


def find_smallest_missing_numer(array,low,high)
  if low > high
    return low
  end
  mid = (low+high)/2
  if array[mid] == mid
    find_smallest_missing_numer(array, mid+1, high)
  elsif array[mid]>mid
    find_smallest_missing_numer(array, low, mid-1)
  end
end


a = [0,1,2,6,8,9]
puts find_smallest_missing_numer(a,0,6)

a = [1,2,6,8,9]
puts find_smallest_missing_numer(a,0,5)

a = [0,1,2,3,4,5,6,8,10]
puts find_smallest_missing_numer(a,0,9)
