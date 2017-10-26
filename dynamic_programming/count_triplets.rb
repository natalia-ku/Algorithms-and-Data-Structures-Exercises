# Find a triplet that sum to a given value
# Given an array and a value, find if there is a
# triplet in array whose sum is equal to the given value.
#If there is such a triplet present in array, then print the
#triplet and return true. Else return false. For example,
#if the given array is {12, 3, 4, 1, 6, 9} and given sum is 24,
# then there is a triplet (12, 3 and 9) present in array whose
#sum is 24.


def find_triplets1(array, sum)
  (0...array.length-2).each do |i|
    (i+1...array.length-1).each do |j|
      (j+1...array.length).each do |k|
        if array[i] + array[j] + array[k] == sum
          puts "Triplet: #{array[i]}  #{array[j]} #{array[k]}"
        end
      end
    end
  end
end

array = [12, 3, 4, 1, 6, 9]
sum = 24
find_triplets1(array, sum)


def find_triplets2(array, sum)
  array.sort!
  (0...array.length-2).each do |i|
    l = i+1
    r = array.length-1
    while(l<r)
      if array[i] + array[l] + array[r] == sum
        puts "Triplet: #{array[i]}  #{array[l]} #{array[r]}"
      elsif array[i] + array[l] + array[r] < sum
        l+=1
      else
        r-=1
      end
    end
  end
end
  array = [12, 3, 4, 1, 6, 9]
  sum = 24
  find_triplets2(array, sum)
