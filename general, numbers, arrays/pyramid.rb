def pyramid(num)
  output = ""
  num_of_whitespaces = num/2
  num_of_whitespaces -= 1 if num % 2 == 0
  (0..num).each do |i|
    if (num % 2 != 0  && i % 2 != 0) || (num % 2 == 0  && i % 2 == 0)
      output << " " * num_of_whitespaces << "#"*i << "\n"
      num_of_whitespaces -= 1
    end
  end
  return output
end


puts pyramid(7)
puts
puts pyramid(6)
puts
puts pyramid(9)
puts
puts pyramid(12)
puts
