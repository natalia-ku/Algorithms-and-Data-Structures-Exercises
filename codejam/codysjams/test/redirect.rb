n = gets.chomp.to_i
a = []
n.times do |i|
  a.push gets.chomp.to_i
end

sum = 0
n.times do |i|
  sum += a[i]
end

puts "Sum of n elements: #{sum}"
