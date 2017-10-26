def nth_prime(n)
  primes = [2]
  next_num = 3
  while primes.length < n
    if is_prime?(next_num)
      primes << next_num
    end
    next_num += 1
  end
  return primes[n-1]
end

def is_prime?(n)
  (2..n/2).each do |i|
    return false if n % i == 0
  end
  return true
end

puts nth_prime(8)


a = []
(2...100).each do |num|
  a << num
end
primes = []
while !a.empty?
  front = a.shift
  primes << front
  while b<a.length

  end

end
