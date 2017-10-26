#Palindromes recursively
def palindrome (string)
  first = 0
  last = string.length-1
  if first == last
    return true
  end

  if string[first] == string[last]
    return palindrome(string[1...-1])
  else
    return false
  end

end


def palindrome2 (string)
  middle = string.length/2
  middle.times do |i|
    if string[i] != string[string.length-1-i]
      return false
    end
  end
  return true

end

string = "addwqda"
print palindrome2(string)


string = "natalia"
print palindrome2(string)


string = "natan"
print palindrome2(string)
