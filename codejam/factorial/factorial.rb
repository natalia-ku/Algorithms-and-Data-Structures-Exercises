def factorial(n)
  f = 1
  n.downto(1) do |i|
    f *= i
  end
  return f
end

def multifact(n, e)
  f = n
  i  = 1
  while n - i * e > 0
    f *= n - i * e
    i += 1
  end
  return f
end

def multifact2(n, e)
  f = 1
  while n > 0
    f *= n
    n -= e
  end
  return f
end

a = []
(1...9000).each do |i|
  a << multifact(9000, i).to_s.length
end

t = gets.chomp.to_i
t.times do |n|
  d = gets.chomp.to_i
  number = 0
  i = 0
  i.upto(8998) do |i|
    if a[i] < d
      number = i + 1
      break
    end
  end
  if number != 0
    puts "Case ##{n+1}: IT'S OVER 9000" + "!"*number
  else
    puts "Case ##{n+1}: ..."
  end
end
