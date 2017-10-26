max_r = 25
max_c = 25
d = Array.new(25){Array.new(25)}

25.times do |i|
  d[0][i] = 1
  d[i][0] = 1
end

(1...25).each do |i|
  (1...25).each do |j|
    d[i][j] = d[i-1][j] + d[i][j-1]
  end
end

d.each do |x|
  x.each do |cell|
    print " "
    print cell
  end
  puts
end


t = gets.chomp.to_i
t.times do |tidx|
  array = gets.chomp.scan(/\d+/).map{|i| i.to_i}
  row = array[0]
  column = array[1]
  puts "Case ##{tidx+1}: #{d[row-1][column-1]}"
end
