def unique_string1?(string)
  letters_hash = Hash.new
  string = string.split("")
  string.each do |el|
    if letters_hash.key?(el) == true
      return false
    else
      letters_hash[el] = true
    end
  end
  return true
end
string = "qwerty"
print unique_string1?(string)


def unique_string2?(string)
  # check ASCII code for each char in string(ASCII code is between 1 and 256)
  unique_letters = Array.new(256, 0)
  (0...string.length).each do |i|
    if unique_letters[string[i].ord] >= 1
      return false
    else
     unique_letters[string[i].ord] += 1
    end
  end
  return true
end

string = "qwerty"
print unique_string2?(string)
