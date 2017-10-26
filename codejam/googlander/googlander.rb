num_of_tests = gets.chomp.to_i
num_of_tests.times do |y|
  array = gets.chomp.scan(/\d+/).map{|i| i.to_i}
  input_r = array[0]
  input_c = array[1]

  r = input_r
  c = input_c
  column_bigger = false
  row_bigger = false
  if r > c
    row = r - 1
    column = row
    c = r
    row_bigger = true
  elsif r < c
    column = c - 1
    row = column
    r = c
    column_bigger = true
  else
    row = r - 1
    column = c - 1
  end

  table = Array.new(r){Array.new(c)}
  k = r
  while k >= 0
    table[k-1][0] = 1
    k -= 1
  end
  i =  0
  while i <= c-1
    table[r-1][i] = 1
    i += 1
  end

  d = r-2
  row.times do
    i = 1
    row.times do
      table[d][i] = table[d][i-1] + table[d+1][i]
      i += 1
    end
    d -= 1
  end

  # PRINT TABLE:
  table.each do |x|
    x.each do |cell|
      print " "
      print cell
    end
    puts
  end

  if column_bigger
    result = table[input_c - input_r][input_c-1]
  else
    result = table[0][input_c-1]
  end
  puts "Case ##{y+1}: #{result}"

end # end of all program
