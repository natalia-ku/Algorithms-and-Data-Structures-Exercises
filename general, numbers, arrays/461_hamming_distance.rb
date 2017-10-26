def hamming_distance(x, y)
  c = 0
  z = x ^ y
  while z > 0 do
    if (z & 1) == 1
      c+=1
    end
    z >>= 1
  end
  return c
end

puts hamming_distance(10, 2) # 1
puts hamming_distance(10, 13) # 3
puts hamming_distance(13, 2) # 4



def hamming_distance2(x, y)
  c = 0
  while x > 0 || y > 0 do
    if (x & 1) != (y & 1)
      c+=1
    end
    x >>= 1
    y >>= 1
  end
  return c
end

puts hamming_distance2(10, 2)





# Hamming Distance:
puts "Enter x:"
x = gets.chomp.to_i
puts "Enter y:"
y = gets.chomp.to_i

def BinaryConvertion (num)
reminders_array = []
  while num > 0
    reminder = num % 2
    reminders_array.push(reminder)
    num = num / 2
  end
return reminders_array
end


puts "Binary array X: "
a = BinaryConvertion(x)
puts a
puts

puts "Binary array Y: "
b = BinaryConvertion(y)
puts b


if a.length >= b.length
  max = a.length - 1
  t = a.length - b.length
  t.times do
    b.push(0)
  end
else
  max = b.length - 1
  t = b.length - a.length
  t.times do
    a.push(0)
  end

end
counter = 0
(0..max).each do |i|
  if a[i] != b[i]
    counter += 1
  end
end
puts
puts "RESULT:"
puts counter
