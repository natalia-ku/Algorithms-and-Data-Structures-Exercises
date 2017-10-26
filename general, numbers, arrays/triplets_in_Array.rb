# Pythagorean Triplet in an array
# Given an array of integers, write a function that returns true if there is a triplet (a, b, c) that satisfies a2 + b2 = c2.
#
# Example:
#
#                1  9  16  25  36
# Input: arr[] = {3, 1, 4, 6, 5}
# Output: True
# There is a Pythagorean triplet (3, 4, 5).
#
# Input: arr[] = {10, 4, 6, 12, 5}
# Output: False
# There is no Pythagorean triplet.


 def find_triplets(array)
   array.map! do |num|
     num = num * num
   end
   array.sort!
   (array.length-1).downto(1).each do |i|
     left = 0
     right = i-1
     while left < right
       if array[left] + array[right] == array[i]
         puts "#{array[left]} + #{ array[right]} == #{array[i]}"
         left += 1
         right -= 1
       elsif array[left] + array[right] > array[i]
         right -= 1
       else
         left += 1
       end
     end
   end

 end

 array = [3, 1, 4, 6, 5]
  find_triplets(array)
