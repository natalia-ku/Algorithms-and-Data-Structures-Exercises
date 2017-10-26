 require_relative 'stack'

def brackets_match?(brackets)
  stack = Stack.new
  brackets.each do |current|
    if current == "("|| current == "[" || current == "{" ||  current == "<"
      stack.push(current)
    end
    if current == ")" || current == "]" || current == "}" || current == ">"
      if stack.empty?
        return false
      end
      if stack.top == "(" && current == ")" || stack.top == "[" && current == "]" ||
        stack.top == "{" && current == "}" || stack.top == "<" && current == ">"
        stack.pop
      else
        return false
      end
    end
  end
  return stack.empty?
end # end of method

t = gets.chomp.to_i
t.times do
  brackets = []
  input = gets.chomp.split("")
  option = ["(", ")", "[", "]", "{", "}", "<", ">"]
  input.each do |n|
    if option.include? n
      brackets << n
    end
  end
  if brackets_match?(brackets)
    print "1"
  else
    print "0"
  end
  print " "
end
