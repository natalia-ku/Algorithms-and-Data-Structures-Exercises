# Given an array, write a program to generate
#a random permutation of array elements.
# This question is also asked as “shuffle a
#deck of cards” or “randomize a given array”.


def shuffle(a)
  n = a.length
  (n-1).downto(1) do |i|
    j = rand(0..i)
    temp = a[i]
    a[i] = a[j]
    a[j] = temp
  end
  return a
end



array = [1,2,3,4,5,6,7,8,9]
print shuffle(array)
