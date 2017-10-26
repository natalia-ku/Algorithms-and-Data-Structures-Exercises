# Find the element that appears once in a sorted array
# where all other elements appear twice one after another.
# Find that element in 0(logn) complexity.

# O(n):
def find_element(array)
  result = 0
    (0...array.length).each do |i|
      if i == 0
        result += array[i]
      elsif array[i] == array[i-1]
        result -= array[i]
      else
        result += array[i]
      end
    end
  return result
end

# O(logn):
def search(array, low, high)
  if low > high
    return "not found"
  end
  if low == high
    return array[low]
  end

  mid = low +(high-low)/2
  if mid % 2 == 0
    if array[mid] == array[mid+1]
      return search(array, mid+2, high)
    else
      return search(array, low, mid)
    end
  else # if mid is odd
    if array[mid] == array[mid-1]
      return search(array, mid+1, high)
    else
      return search(array, low, mid-1)
    end
  end
end

array = [1, 1, 3, 3, 4, 7, 7]
puts find_element(array) #4
puts search(array, 0, 6) #4
