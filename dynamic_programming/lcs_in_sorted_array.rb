# Given two SORTED sequences, find the length of longest subsequence
# present in both of them
# Examples:
# LCS for input Sequences “ABCDGH” and “AEDFHR” is “ADH” of length 3.


# THIS IS ONLY FOR SORTED!!

def lcs(a,b)
  subsequence = ""
  i = 0
  j = 0
  while i < a.length-1 || j < b.length-1
    if a[i] == b[j]
      subsequence << a[i]
      i += 1
      j += 1
    elsif b[j] > a[i]
      i += 1
    elsif a[i] > b[j]
      j += 1
    end
  end
  return subsequence
end
#
a = "ABCDGH"
b = "AEDFHR"
puts lcs(a,b)

a = "ABDGHKLMSP"
b = "CGKLMNOPRS"

puts lcs(a,b)
