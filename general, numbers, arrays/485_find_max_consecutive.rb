def find_max_consecutive_ones(nums)
counter = 0
counters_array = []
  nums.each do |num|
    if num == 0
      counters_array.push(counter)
      counter = 0
      next
    elsif num == 1
      counter += 1
      counters_array.push(counter) if nums.last == num
    end
  end
  max = 0
  counters_array.each do |c|
    if c > max
      max = c
    end
  end
  return max
end

n = [0,0,1,1,1,1,1,0,1,1,1,0,0,0]
find_max_consecutive_ones(n)
