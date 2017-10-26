# Print all distinct characters of a string
#in order (3 Methods)
# Given a string, find the all distinct
#(or non-repeating characters) in it.
#For example, if the input string is
# “Geeks for Geeks”, then output should be
#‘for’ and if input string is “Geeks Quiz”,
#then output should be ‘GksQuiz’.


def print_distinct(string)
  res = ''
  (0...string.length).each do |i|
    unique = true
    (0...string.length).each do |j|
      if string[i] == string[j] && i != j
        unique = false
        break
      end
    end
    res << string[i] if unique == true
  end
  puts res
end

s = "Geeks for Geeks"
puts s
print_distinct(s)
s = "Hello Geeks"
puts s
print_distinct(s)
