
#Given two strings, find if first string is a subsequence of second
#Given two strings str1 and str2, find if str1 is a subsequence of str2.
#  Expected time complexity is linear.
# Examples:
# Input: str1 = "AXY", str2 = "ADXCPY"
# Output: True (str1 is a subsequence of str2)
# Input: str1 = "AXY", str2 = "YADXCP"
# Output: False (str1 is not a subsequence of str2)
# Input: str1 = "gksrek", str2 = "geeksforgeeks"
# Output: True (str1 is a subsequence of str2)

def is_subsequence?(s1, s2)
  j = 0
  (0...s2.length).each do |i|
    j += 1 if s2[i] == s1[j]
  end
  return j==s1.length
end



s1 = "AXY"
s2 = "ADXCPY"
puts is_subsequence?(s1,s2)
s1 = "AXY"
s2 = "YADXCP"
puts is_subsequence?(s1,s2)
s1 = "gksrek"
s2 = "geeksforgeeks"
puts is_subsequence?(s1,s2)
