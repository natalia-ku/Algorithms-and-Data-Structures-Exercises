# The problem is to count all the possible paths
#  from top left to bottom right of a mXn matrix
#   with the constraints that from each cell you
#   can either move only to right or down
def find_min_path(i, j)
  return 1 if i == 0 || j == 0
  return find_min_path(i-1, j) + find_min_path(i, j-1)
end

def find_min_path2(a)
  n = a.length
  m = a[0].length
  (0...n).each do |i|
    a[i][0] = 1
  end
  (0...m).each do |j|
    a[0][j] = 1
  end
  (1...n).each do |i|
    (1...m).each do |j|
      a[i][j] = a[i-1][j] + a[i][j-1]
    end
  end
end

# Exampple of matrix
matrix = [[0, 0, 0, 0],
          [0, 0, 0, 0],
          [0, 0, 0, 0]]
# Finds a number of paths from [0][0] to [2][2]:
print find_min_path(2,2)
puts
find_min_path2(matrix)
puts matrix[2][2]
