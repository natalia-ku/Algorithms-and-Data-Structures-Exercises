# Find a first non-repeated character in string:
def first_nonrepeated_char(string)
  string = string.split("")
  char_hash = Hash.new(string.length)
  string.each do |c|
    if !char_hash.key?(c)
      char_hash[c] = 1
    else
      char_hash[c] += 1
    end
  end
  char_hash.each do |k, v|
    return k if v == 1
  end
  return -1
end


def first_nonrepeated_char2(string)
  temp = Array.new(256,0)
  (0...string.length).each do |i|
    temp[string[i].ord] += 1
  end
  k = 0
  (0...string.length).each do |i|
     if temp[string[i].ord] == 1
       return string[i]
     end
  end
end

puts first_nonrepeated_char2("ladllerw")
