#
# def remove_char(string, char)
#   output = ""
#   word = string.split("")
#   (0...word.length).each do |i|
#     if word[i] != char
#       output << word[i]
#     end
#   end
#   return output
# end


def remove_char(string, char)

  word = string.split("")
  j = 0
  (0...word.length).each do |i|
    if word[i] != char
      word[j] = word[i]
      j += 1
    end
  end
  return word
end

print remove_char("natasha", "a")
