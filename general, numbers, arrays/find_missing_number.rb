#You are given a list of n-1 integers and these integers are in the range
#of 1 to n. There are no duplicates in list. One of the integers
#is missing in the list.

def find_missing_number(array, n)
  sum = (1..n).reduce(:+) # sum from 1 to n
  array.each do |el|
    sum -= el
  end
  return sum
end


a = [6,1,7,4,5,3]
puts find_missing_number(a, 7)
