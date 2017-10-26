def fib(n, lookup)
  if n == 0 || n == 1
    lookup[n] = n
  end
  if lookup[n] == nil
    lookup[n] = fib(n-1, lookup) + fib(n-2, lookup)
  end
  return lookup[n]
end

lookup = Array.new(100,nil)

puts fib(25, lookup)
