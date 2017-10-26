t = gets.chomp.to_i
t.times do |tidx|
  array = gets.chomp.scan(/\d+/).map{|i| i.to_i}
  d = array[0]
  n = array[1]
  puts "Case ##{tidx+1}:"
  g = Array.new(30){Array.new(30){'O'}}

  (0..5).each do |i1|
    (0..5).each do |j1| # outer
      x = i1*5
      y = j1*5
      g[x+2][y+2] = 'I'
      k = 0
      if n > 8
        n -= 8
        k = 8
      else
        k = n
        n = 0
      end
      g[x+1][y+1]='/' if k>0
      g[x+1][y+2]='/' if k>1
      g[x+1][y+3]='/' if k>2
      g[x+2][y+1]='/' if k>3
      g[x+2][y+3]='/' if k>4
      g[x+3][y+1]='/' if k>5
      g[x+3][y+2]='/' if k>6
      g[x+3][y+3]='/' if k>7
    end
  end

  g.each do |row|
    row.each do |cell|
      print cell
    end
    puts
  end

 end # end of program
