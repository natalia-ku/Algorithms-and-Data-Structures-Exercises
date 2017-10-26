# Merge two sorted arrays
def merge_array(a,b)
  result_array = Array.new(a.length+b.length, 0)
  i = 0
  j = 0
  k = 0
  while  i < a.length && j < b.length
    if a[i] < b[j]
      result_array[k] = a[i]
      i += 1
    else
      result_array[k] = b[j]
      j += 1
    end
    k+=1
  end
  while j < b.length
    result_array[k] = b[j]
    k += 1
    j += 1
  end
  while i < a.length
    result_array[k] = a[i]
    k += 1
    i += 1
  end
  return result_array
end


a = [1,3,5,7,9,11]
b = [2,3,4,8,10,14]
print merge_array(a, b)
