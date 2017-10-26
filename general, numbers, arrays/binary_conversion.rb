def binary_conversion(string)
  number = 0
  x = 0
  string.split('').reverse_each do |s|
      number += s.to_i * 2 ** x
      x += 1
  end
  return number
end

puts binary_conversion("10100101")
