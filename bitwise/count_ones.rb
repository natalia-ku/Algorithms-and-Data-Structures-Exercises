def count_ones(a)
  cnt = 0
  tmp = a
  while a > 0
    cnt += 1 if a%2 == 1
    a = a/2
  end
  puts "#{tmp} #{cnt}"
end

def count_ones_bitwise(a)
  cnt = 0
  tmp = a
  while a > 0
    cnt+=1 if a & 1 == 1
    a >>= 1
  end

  puts "#{tmp} #{cnt}"
end

(5..8).each do |i|
  count_ones(i)
  count_ones_bitwise(i)
end
