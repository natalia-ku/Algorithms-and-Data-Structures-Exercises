# Count occurances of a number in sorted array
# with duplicates

# LOG(N):
def find_occurrences(array, target, search_first)
  left = 0
  right = array.length - 1

  while right >= left
    mid = (left + right) / 2
    if array[mid] == target
      result = mid
      if search_first
        right = mid - 1
      else
        left = mid + 1
      end
    elsif target < array[mid]
      right = mid - 1
    else
      left = mid + 1
    end
  end
  return result
end


array = [2,5,5,5,6,6,8,9,9,9]
start_index = find_occurrences(array, 5, true)
end_index = find_occurrences(array, 5, false)
