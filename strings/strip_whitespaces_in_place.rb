# Given a string, remove all spaces from the string and return it.
# Input:  "g  eeks   for ge  eeks  "
# Output: "geeksforgeeks"
# Expected time complexity is O(n) and only one traversal of string.

def remove_whitespaces(string)
  count = 0
  list = []
  (0...string.length).each do |i|
    if string[i] != ' '
      list << string[i]
    end
  end
  return list
end

string = "g  eeks   for ge  eeks  "
print remove_whitespaces(string)
