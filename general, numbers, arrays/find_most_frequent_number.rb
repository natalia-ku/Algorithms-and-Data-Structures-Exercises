# Given an array of numbers and a positive integer 'n', find 'n'th most frequent occurring number in that array. If there are more than one numbers which are occurring 'n'th most frequently, then you can return any one of such integers.
#
# Example:  For the input array {1,2,2,2,4,4,4,4,5,5,5,5,5,7,7,8,8,8,8}
# if n = 1, then the output returned should be 5 because it is the most frequent number,
# if n = 2, output can be either 4 or 8 since any of these numbers could be considered as the 2nd most frequent number,
# if n = 3, again output can be either 4 or 8
# if n = 4, output should be 2.


def find_most_frequent(array, k)
  frequency_hash = Hash.new
  (0...array.length).each do |i|
    if frequency_hash[array[i]] != nil
      frequency_hash[array[i]] += 1
    else
      frequency_hash[array[i]] = 1
    end
  end
  return frequency_hash.values.sort[-k]
end

a = [1,2,2,2,4,4,4,4,5,5,5,5,5,7,7,8,8,8,8]
puts find_most_frequent(a, 1)
puts find_most_frequent(a, 2)
puts find_most_frequent(a, 3)
puts find_most_frequent(a, 4)
