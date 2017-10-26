#Given a cost matrix cost[][] and a position (m, n) in cost[][],
#write a function that returns cost of minimum cost path to reach
#(m, n) from (0, 0). Each cell of the matrix represents a cost to
#traverse through that cell. Total cost of a path to reach (m, n)
#is sum of all the costs on that path (including both source and
#destination). You can only traverse down, right and diagonally
#lower cells from a given cell, i.e., from a given cell (i, j),
# cells (i+1, j), (i, j+1) and (i+1, j+1) can be #traversed.
# You may assume that all costs are positive integers.

def min_cost(cost, m, n)
  if n < 0 || m < 0
    return 100000
  elsif m == 0 && n == 0
    return cost[m][n]
  else
    return cost[m][n] + find_min( min_cost(cost, m-1, n-1),
                              min_cost(cost, m-1, n),
                              min_cost(cost, m, n-1))
  end
end

def find_min(x, y, z)
  if x < y
    return (x < z) ? x : z
  else
    return (y < z) ? y : z
  end
end


cost = [[1, 2, 3],
        [4, 8, 2],
        [1, 5, 3]]
print min_cost(cost, 2, 2)
