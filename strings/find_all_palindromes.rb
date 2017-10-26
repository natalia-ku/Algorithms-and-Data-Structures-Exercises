# Find all distinct palindromic sub-strings of a given string
# Input: str = "abaaa"
# Output: Below are 5 palindrome sub-strings
# a
# aa
# aaa
# aba
# b


def is_palindrome?(string)
  return false if string == nil
  first = 0
  last = string.length-1
  if first == last || string.length == 2 && string[first] == string[last]
    return true
  end
  if string[first] == string[last]
    return is_palindrome?(string[1...-1])
  else
    return false
  end
end

puts is_palindrome?("ngfkjn")

def find_all_palindomes(string)
  output = []
  output_hash = Hash.new
  (0...string.length).each do |i|
    (0...string.length).each do |j|
      if is_palindrome?(string[i..j])
          output_hash[string[i..j]] = 1 if output_hash[string[i..j]] == nil
          output_hash[string[i..j]] += 1 if output_hash[string[i..j]] != nil
      end
    end
  end
  return output_hash.keys
end

string = "abaaa"
print find_all_palindomes(string)
