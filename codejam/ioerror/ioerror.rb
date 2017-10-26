num_of_tests = gets.chomp.to_i
num_of_tests.times do |i|
  num = gets.chomp.to_i
  string = gets.chomp
  #string = "OIOOIOIIOOIOOOOOOIOOIIII"
  result_string = ""

  num.times do
    real_bytes = ""
    one_byte_fake = string.slice!(0..7).split("")
    one_byte_fake.each do |byte|
      if byte == "O"
        real_bytes << "0"
      elsif byte == "I"
        real_bytes << "1"
      end #end of elsif
    end#end of one_byte_fake
    result_string << real_bytes.to_i(2).chr
  end#end of num.times do

  puts "Case ##{i+1}: " + result_string

end
