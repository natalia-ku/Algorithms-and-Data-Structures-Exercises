n = 10
is_prime = Array.new(n, true)
is_prime[0] = nil
is_prime[1] = nil
# puts is_prime.length
i = 2
while i*i <= n
  if is_prime[i] == true
    j = i*i
    (j...n).step(i).each do |a|
      is_prime[a] = false
    end
  end
    i += 1
end

is_prime.each_with_index do |pr, i|
  puts "#{i}: #{pr} "
  # puts i if pr == true
end
