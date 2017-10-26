# t = gets.chomp.to_i
# t.times do |n|
#   array = gets.chomp.scan(/\d+/).map{|i| i.to_i}
#   k = array[0]
#   v = array[1]
#   total = 0
#   (0..k).each do |r|
#     (0..k).each do |g|
#       (0..k).each do |b|
#         if (r-g).abs <= v && (r-b).abs <= v  && (g-b).abs <= v
#           total += 1
#         end
#       end
#     end
#   end
# puts "Case ##{n+1}: #{total}"
# end


# t = gets.chomp.to_i
# t.times do |n|
#   array = gets.chomp.scan(/\d+/).map{|i| i.to_i}
#   k = array[0]
#   v = array[1]
#   total = 0
#   (0..k).each do |r|
#     max = [r-v, 0].max
#     min = [r+v, k].min
#     (max..min).each do |g|
#       minb = [r-v, g-v,0].max
#       maxb = [r+v, g+v, k].min
#       total += (maxb - minb + 1)
#     end
#   end
# puts "Case ##{n+1}: #{total}"
# end

  k = 1
  v = 1
  total = 0
  (0..k).each do |r|
    puts "R: #{r}"
    max = [r-v, 0].max
    min = [r+v, k].min
    puts "MAX: #{max}"
    puts "MIN: #{min}"
    (max..min).each do |g|
      puts "G: #{g}"
      minb = [r-v, g-v,0].max
      maxb = [r+v, g+v, k].min
      total += (maxb - minb + 1)
      puts "TOTAL: #{total}"
    end
    puts "="*20
  end
