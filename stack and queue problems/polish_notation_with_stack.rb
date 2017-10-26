require_relative "stack"

#["2", "1", "+", "3", "*"] -> ((2 + 1) * 3) -> 9
stack = Stack.new
array = ["2", "9", "+", "5", "-", "3", "+"]
operators = "+-/*"
array.each do |element|
   if !operators.include? element
    stack.push(element.to_i)
  else
    b = stack.pop
    a = stack.pop
    case element
      when "+"
        stack.push(a + b)
      when "-"
        stack.push(a - b)
      when "*"
        stack.push(a * b)
      when "/"
        stack.push(a / b)
    end
  end
end

puts "Result is #{stack.pop}"
