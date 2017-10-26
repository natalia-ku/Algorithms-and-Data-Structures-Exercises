#Given two ordered arrays of words, return an array of all duplicated words.
# Ex. ["cat", "dog", "horse", "mouse"] &
# ["chinchila", "dog", "eagle", "ferret", "horse"] => [""dog", horse"]

def find_duplicates(arr1, arr2) #intersection
  i = 0
  j = 0
  intersection = []
  while i < arr1.length && j < arr2.length
    if arr1[i] == arr2[j]
      intersection << arr1[i]
      i += 1
      j += 1
    elsif arr1[i] < arr2[j]
      i += 1
    elsif arr1[i] > arr2[j]
      j += 1
    end
  end
  return intersection
end

arr1 = ["cat", "dog", "horse", "mouse"]
arr2 = ["chinchila", "dog", "eagle", "ferret", "horse"]
# print find_duplicates(arr1, arr2)

def find_union (arr1, arr2)
  i = 0
  j = 0
  intersection = []
  while i < arr1.length && j < arr2.length
    if arr1[i] == arr2[j]
      intersection << arr1[i]
      i += 1
      j += 1
    elsif arr1[i] < arr2[j]
      intersection << arr1[i]
      i += 1
    elsif arr1[i] > arr2[j]
      intersection << arr2[j]
      j += 1
    end
  end
  while i < arr1.length
    intersection << arr1[i]
    i += 1
  end
  while j < arr2.length
    intersection << arr2[j]
    j += 1
  end
return intersection
end

print find_union(arr1, arr2)
