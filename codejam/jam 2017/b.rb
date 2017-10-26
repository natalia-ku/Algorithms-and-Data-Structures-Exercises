t = gets.chomp.to_i
t.times do |tidx|
  n = gets.chomp.to_i #
  s = gets.chomp
  s1 = s.split(" ")
  pr = []
  s1.each do |i|
    pr << i.to_f
  end

  pr.sort!
  # print pr
  # puts
  res = 1.0
  half = (2*n-1)/2
  (0..half).each do |i|
    # puts "#{(1-pr[i]*pr[2*n-1-i])} #{pr[i]} #{pr[2*n-1-i]}"
    res *= 1-pr[i] * pr[2*n-1-i]
  end

  puts "Case ##{tidx+1}: #{format("%.6f", res)}"
end
