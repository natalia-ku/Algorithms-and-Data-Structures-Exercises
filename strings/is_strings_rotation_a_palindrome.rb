# Check if a given string is a rotation of a
#palindrome
# Given a string, check if it is a rotation of
#a palindrome. For example your function should
#return true for “aab” as it is a rotation of “aba”.
# Examples:
# Input:  str = "aaaad"
# Output: 1
# // "aaaad" is a rotation of a palindrome "aadaa"
# Input:  str = "abcd"
# Output: 0
# // "abcd" is not a rotation of any palindrome.

def is_rotated_string_palindrome?(string)
  num = string.length
  rotated_string = string
  (num).times do
    rotated_string = rotate_by(rotated_string, 1)
    if is_palindrome?(rotated_string)
      return true
    end
  end
  return false
end

def rotate_by(array, offset)
  array = array.split("")
  (0...offset).each do |i|
    ending = array.length-offset
    (0..ending).each do |j|
      temp = array[j]
      array[j] = array[j+1]
      array[j+1] = temp
    end
  end
  return array.join("")
end

#Palindromes recursively
def is_palindrome?(string)
  first = 0
  last = string.length-1
  if first == last
    return true
  end
  if string[first] == string[last]
    return is_palindrome?(string[1...-1])
  else
    return false
  end
end

# string = "aaaad"
#  puts is_rotated_string_palindrome?(string)
# 
# string = "abcd"
#  puts is_rotated_string_palindrome?(string)
