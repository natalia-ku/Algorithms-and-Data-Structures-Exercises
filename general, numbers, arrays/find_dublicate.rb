#You are given an unsorted array containing ALL(!) integers between 1 and 1,000,000.
# One integer is missing.
#How can you determine which one?
# by iterating through the array only once, without sorting?
def find_dublicate(array)
  sum = 1000000*(1000000+1)/2 # (n*(n+1))/2
  array.each do |el| 
    sum -= el
  end
  return sum
end

array = []
i = 1
1000000.times do
  array << i
  i += 1
end
puts array.length
array.delete(36)
puts array.length
puts find_dublicate(array)
