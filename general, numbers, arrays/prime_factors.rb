def prime_factors(num)
  prime_factors = []
  d = 2
  while num > 1
    while num % d == 0
      prime_factors.push(d)
      num = num / d
    end
    d += 1
  end

  return prime_factors
end

puts prime_factors(60)
