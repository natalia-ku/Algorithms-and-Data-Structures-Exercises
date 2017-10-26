#Reverse words in a string "This is" - "is This"

def reverse_words(string)
    string = reverse_helper(string)
    last_word_end = 0
    (0...string.length).each do |i|
      if i == string.length - 1
        string[last_word_end..i] = reverse_helper(string[last_word_end..i])
        last_word_end = i + 1
      elsif string[i] == " "
        string[last_word_end...i] = reverse_helper(string[last_word_end...i])
        last_word_end = i + 1
      end
    end
    return string
end

def reverse_helper(string)
  if string.length < 2
    return string
  else
    return "#{string[-1]}#{reverse_helper(string[0...-1])}"
  end
end

def reverse_helper2(string)
  start_i = 0
  end_i = string.length - 1
  while start_i < end_i
    temp = string[start_i]
    string[start_i] = string[end_i]
    string[end_i] = temp
    start_i += 1
    end_i -= 1
  end
  return string
end

string = "This is summer"
print reverse_helper2("summer")
puts
print reverse_words(string)
