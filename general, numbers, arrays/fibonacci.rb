
def fibonacci1 (n)
  if n <= 1
    return n
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end
end

def fibonacci2 (n)
  f = []
  f[0] = 1
  f[1] = 1
  (2..n).each do |i|
    f[i] = f[i-1] + f[i-2]
  end
  return f[n]
end

def fibonacci (n)
  f = 1
  first = 0
  second = 1
  (1..n).each do
    f =  first + second
    first = second
    second = f
  end
  return f
end

puts fibonacci2(6)
puts fibonacci1(6)
puts fibonacci(6)
puts
puts fibonacci2(100)
puts fibonacci1(6)
puts fibonacci(100)
