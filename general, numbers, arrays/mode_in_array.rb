# Given an array of numbers,
# return the mode—the number that appears the most times.

# O(n^2):
def find_mode(array)
  mode = 0
  max_count = 0
  (0...array.length).each do |i|
    count = 0
    (0...array.length).each do |j|
      count += 1 if array[j] == array[i]
    end
    if count > max_count
      max_count = count
      mode = array[i]
    end
  end
  return mode
end

puts find_mode([2,3,4,5,1,2,3,5,3,2,3,10])

# O(n*log(n)):
def find_mode1(array)
  mode = 0
  current_count = 0
  max_count = 0
  array.sort!
  (0...array.length).each do |i|
    if array[i] == array[i+1]
      current_count += 1
    end
    if current_count > max_count
      max_count = current_count
      mode = array[i]
    end
    if array[i] != array[i-1]
      current_count = 0
    end
  end
  return mode
end
puts find_mode1([2,3,4,5,1,2,3,5,3,2,3,10])

# O(n):
def find_mode2(array)
  counts = Hash.new
  for num in array
    if counts.keys.include? num
      counts[num] += 1
    else
      counts[num] = 1
    end
  end
  mode = 0
  max_count = 0
  counts.each do |key, value|
    if value > max_count
      max_count = value
      mode = key
    end
  end
  return mode
end
puts find_mode2([2,3,4,5,1,2,3,5,3,2,3,10])
