#Run-length encoding - if a user inputs a string of "aaabccd",
# return "a3b1c2d1"; or "aaaaaaaab", return "a8b1". But if the string is
# "aaabbaaac" return "a3b2a3c1"


def encode_string(string)
  output = ""
  count = 1
  (0...string.length).each do |i|
    output << string[i] if output.split("").last!= string[i]
    if string[i] == string [i+1]
      count += 1
    elsif string[i] !=  string [i+1]
      output << count.to_s
      count = 1
    end
  end
  return output
end


def decode_string(string)
  output = ""
  (0...string.length).each do |i|
    k = string[i].to_i
    if k != 0
      k.times do
        output << string[i-1]
      end
    end
  end

  return output
end

string = "a3b1c2d1" # aaabccd
puts decode_string(string)



string = "aaabccd" # a3b1c2d1
puts encode_string(string)
