t = gets.chomp.to_i
t.times do |tidx|
  array = gets.chomp.scan(/\d+/).map{|i| i.to_i}
  r = array[0]
  c = array[1]
  puts "Case ##{tidx+1}: #{result}"
end
