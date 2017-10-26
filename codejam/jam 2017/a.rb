t = gets.chomp.to_i
t.times do |tidx|
  array = gets.chomp.scan(/\d+/).map{|i| i.to_i}
  f = array[0]
  s = array[1]
  # row = Array.new(s+1, 0)
  g = Array.new(s+1){Array.new(s+1){false}}

  f.times do
    array = gets.chomp.scan(/\d+/).map{|i| i.to_i}
    a = array[0]
    b = array[1]
    g[a][b] = true
    g[b][a] = true
  end
  max = -1
  g.each do |r|
    k = 0
    r.each do |cell|
      k+=1 if cell == true
    end
    max = k if k > max
  end

  puts "Case ##{tidx+1}: #{max}"
end
