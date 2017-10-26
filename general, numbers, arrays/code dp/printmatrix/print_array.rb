n = 6
numbers = Array.new(n){Array.new(n){rand(10..20)}}
#PRINT TABLE:
numbers.each do |x|
  x.each do |cell|
    print " "
    print cell
  end
  puts
end
puts
x = numbers[0].length
numbers.each do |row|
  (0...x).each do |i|
    print " "
    print row[i]
  end
  x -= 1
  puts
end
puts

x = 1
numbers.each do |row|
  (0...x).each do |i|
    print " "
    print row[i]
  end
  x += 1
  puts
end
puts

x = numbers[0].length - 1
k = x
numbers.each do |row|
  0.upto(x).each do |i|
    print " "
    if i < k
      row[i] = "  "
    end
    print row[i]
  end
  k -= 1
  puts
end
puts

#
# # x = numbers[0].length
# x = 5
# numbers.each do |row|
#   5.downto(x).each do |i|
#     print " "
#     print row[i]
#   end
#   x -= 1
#   puts
# end
# puts
