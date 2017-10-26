require 'strscan'

num_of_tests = gets.chomp.to_i
num_of_tests.times do |i|
  number_of_items = gets.chomp.to_i
  prices = gets.chomp.scan(/\d+/).map{|i| i.to_i}
  output = []
  prices.length.times do |n|
    number = (prices[n] * 4)/3
    if prices.include? number
      output << prices[n]
      prices[n] = 0
      prices[prices.index(number)] = 0
    end
  end
  output.delete(0)
  print "Case ##{i+1}: "
  output.each do |n|
    print "#{n} "
  end
  puts
end
