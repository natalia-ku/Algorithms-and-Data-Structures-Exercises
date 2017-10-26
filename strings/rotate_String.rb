t = gets.chomp.to_i
t.times do
  input = gets.chomp.split("")
  number = 0
  string = ""
  if input[0] == "-"
    number = -(input[1].to_i)
    string = input[3..-1]
  else
    number = input[0].to_i
    string = input[2..-1]
  end
  if number > 0
    string << string[0...number]
    string.flatten!
    string.slice!(0...number)
    print string.join("")
  else #number <0
    temp = string[number..-1]
    string.slice!(number..-1)
    new_string = []
    new_string << temp
    new_string << string
    new_string.flatten!
    print new_string.join("")
  end
  print " "
end
