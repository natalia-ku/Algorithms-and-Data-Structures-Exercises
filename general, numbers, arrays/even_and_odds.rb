def separate_even_odds(array)
  left = 0
  right = array.length-1
  while left < right
    while array[left] % 2 == 0
      left += 1
    end
    while array[right] % 2 == 1
      right -= 1
    end
    if left < right
      temp = array[left]
      array[left] = array[right]
      array[right] = temp
      left += 1
      right -= 1
    end
  end
  return array


end

array = [12, 34, 45, 9, 8, 90, 3]
print separate_even_odds(array)
