# Chocolate Distribution Problem
# Given an array of n integers where each value represents
# number of chocolates in a packet. Each packet can have
# variable number of chocolates. There are m students, the
#task is to distribute chocolate packets such that :
#
# Each student gets one packet.
# The difference between the number of chocolates in
#packet with maximum chocolates and packet with minimum
# chocolates given to the students is minimum.



def find_difference(a, m)
  a.sort!
  first = 0
  last = 0
  i = 0
  min_diff = 1000000
  while i+m-1 < a.length
    diff = a[i+m-1] - a[i]
    if diff < min_diff
      min_diff = diff
      first = i
      last = i+m-1
    end
    i += 1
  end
  result = a[last]-a[first]
  return result
end



a = [7, 3, 2, 4, 9, 12, 56]
m = 3
puts find_difference(a,m)
a = [3, 4, 1, 9, 56, 7, 9, 12]
m = 5
puts find_difference(a,m)
a = [12, 4, 7, 9, 2, 23, 25, 41, 30, 40, 28, 42, 30, 44, 48,  43, 50]
m = 7
puts find_difference(a,m)
