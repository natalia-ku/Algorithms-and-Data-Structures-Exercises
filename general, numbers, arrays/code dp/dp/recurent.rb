def recurent2(x, n)
  sum = 0
  s = []
  s[0] = 1
  (1..n).each do |i|
    s[i] = (-1)*x/i*s[i-1]
    sum += s[i]
  end
  return sum
end

def recurent(x, n)
  sum = 0
  s = 1
  (1..n).each do |i|
    s = (-1)*x/i*s
    sum += s
  end
  return sum
end

puts recurent(2.0, 1001)

# def factorial(n)
#   if n == 0 || n == 1
#     res =  1
#   else
#     res =  factorial(n-1) * n
#   end
#   return res
# end
# result = recurent(2, 10)
# puts result


# puts factorial(5)
