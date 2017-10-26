# Print all possible strings of length k that can be formed from a set of n characters
# Given a set of characters and a positive integer k, print all possible strings of length k that can be formed from the given set.
#
# Examples:
#
# Input:
# set[] = {'a', 'b'}, k = 3
#
# Output:
# aaa
# aab
# aba
# abb
# baa
# bab
# bba
# bbb
#



def print_combination(array,prefix, n,  k)
  if k == 0
    puts prefix
    return
  end
  (0...n).each do |i|
    new_prefix = prefix + array[i]
    print_combination(array, new_prefix, n, k-1)

  end

end

array = ['a', 'b']
print_combination(array, "", 2, 3)
