def selection_sort (array)
  l = array.length - 1
  (0...l).each do |i|
      index = i
      j = i + 1
      (j..l).each do |j|
          if array[j] < array[index]
            index = j
          end
      end
      smaller_num = array[index]
      array[index] = array[i]
      array[i] = smaller_num
  end
  puts "Array after sorting:"
  puts array
  return array
end

nums = [5,4,2,8,23,1,43,25,78,54,2,43]
selection_sort(nums)
