# Time complexity - O(n)
def reverse(array)
  start_ind = 0
  end_ind = array.length-1
  while start_ind < end_ind
    temp = array[start_ind]
    array[start_ind] = array[end_ind]
    array[end_ind] = temp
    start_ind += 1
    end_ind -= 1
  end
  return array
end

a = [1,2,3,4,5,6]
print reverse(a)
print reverse1(a)
