def add(x, y)
  if y == 0
    return x
  end
  a = x ^ y
  b = (x & y) << 1
  puts "#{a} #{b}"
  return add(a, b)
end

puts add(5, 7)
