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

(1...101).each do
  a = []
  (1...9000).each do |i|
    a << multifact(9000, i).to_s.length
  end
end
