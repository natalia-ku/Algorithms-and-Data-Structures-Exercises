# Search in a row wise and column wise sorted matrix
# Given an n x n matrix and a number x,
# find position of x in the matrix if it
#is present in it. Else print “Not Found”.
#In the given matrix, every row and column
#is sorted in increasing order. The designed
#algorithm should have linear time complexity.


def find_in_matrix(array, el)
  i = 0
  j = array.length-1
  while i < array.length && j >= 0
    if array[i][j] == el
      puts "Found at index #{i}, #{j}"
      return
    end
    if array[i][j] > el
      j -= 1
    else #array[i][j] < el
      i += 1
    end
  end
  puts "Not found"
end

array = [[10, 20,  30, 40],
        [ 15, 25,  35, 45],
        [ 27, 29,  37, 48],
        [ 32, 33,  39, 50]]
find_in_matrix(array,29)
