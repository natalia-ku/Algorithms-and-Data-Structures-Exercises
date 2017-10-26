# goood when almost whole array is sorted.used in quicksort when
# the last steps to reduce recursion calls
def insertionSort(array)
  temp = 0
  l = array.length - 1
  (1..l).each do |i|
    j = i
    j.downto(1) do |j|
        if array[j] < array[j-1]
          temp = array[j]
          array[j] = array[j-1]
          array[j-1] = temp
        end
    end
  end
  puts "Sorted array:"
  puts array
end

nums = [3,6,1,43,21,98,23,54,4]
insertionSort(nums)
