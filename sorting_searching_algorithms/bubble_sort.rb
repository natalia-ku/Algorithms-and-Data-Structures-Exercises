def bubble_sort(nums)
l = nums.length - 1
  (0..l).each do |i|
    swapped = false
    k = l - i
    (1..k).each do |j|
      if nums[j-1] > nums[j]
        temp = nums[j-1]
        nums[j-1] = nums[j]
        nums[j] = temp
        swapped = true
      end
    end
    if swapped == false
      break
    end
  end
  return nums
end

nums = [3,1,4,1,5,9,2,6]
puts bubble_sort(nums)
