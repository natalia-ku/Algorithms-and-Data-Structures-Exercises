#Given two sequences, find the length of longest subsequence present
#in both of them.
#A subsequence is a sequence that appears in the same relative order,
# but not necessarily contiguous.
#LCS for input Sequences “ABCDGH” and “AEDFHR” is “ADH” of length 3.
#LCS for input Sequences “AGGTAB” and “GXTXAYB” is “GTAB” of length 4


def max(a, b)
  return a > b ? a : b
end
# x, y - strings; m,n - their lengths
# Returns length of LCS for x[0..m-1], y[0..n-1]
def lcs (x, y, m, n)
  if m == 0 || n == 0
    return 0
  end
  if x[m-1] == y[n-1]
    return 1 + lcs(x,y, m-1, n-1)
  else
    return max(lcs(x, y, m, n-1), lcs(x, y, m-1, n))
  end
end

puts lcs1("ABCDGH", "AEDFHR", 6, 6)

# puts lcs1("AGGTAB", "GXTXAYB", 6, 7)
