def quick_sort(array, left, right)
  i = left
  j = right
  pivot = array[(i + j) / 2]
  while i <= j do
    while array[i] < pivot
      i += 1
    end
    while array[j] > pivot
      j -= 1
    end
    if i <= j  #swap:
      temp = array[i]
      array[i] = array[j]
      array[j] = temp
      i += 1
      j -= 1
    end
  end
  if left < j
    quick_sort(array, left, j)
  end
  if i < right
    quick_sort(array, i, right)
  end
end

nums = [3,9,0,1,4,23,12,76,98,43,12,11]
print nums
puts
quick_sort(nums, 0, 11)
puts "After sort:"
print nums




nums = [10,7,1,4,12,6,11]
print nums
puts
quick_sort(nums, 0, 11)
puts "After sort:"
print nums
