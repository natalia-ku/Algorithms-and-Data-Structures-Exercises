# Find lost element from a duplicated array
# Given two arrays which are duplicates of each
#other except one element, that is one element
# from one of the array is missing, we need
#to find that missing element.



def find_missing(a1,a2)
  if a1[0] != a2[0]
    return a1[0]
  end
  if a1.length > a2.length
    left = 0
    right = a1.length-1
  else
    left = 0
    right = a2.length-1
  end
  while left < right
    mid = (left + right) /2
    if a1[mid] == a2[mid] #element in the right part
      left  = mid+1
    else #element in the left part
      right = mid-1
    end
  end
  if a1.length > a2.length
      return a1[right]
  else
    return a2[right]
  end


end


a1 = [1, 4, 5, 7, 9]
a2 = [4, 5, 7, 9]
puts find_missing(a1,a2)

a1 = [2, 3, 4, 5]
a2 = [2, 3, 4, 5, 6]
puts find_missing(a1,a2)
