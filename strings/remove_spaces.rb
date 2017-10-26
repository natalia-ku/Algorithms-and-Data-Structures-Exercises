
def remove_spaces(array)
  count = 0
  count_spaces = 0
  size = array.length

  (0...size).each do |i|
    if array[i] != " "
      count += 1
    end
    a = i
    while array[a] == " "
      count_spaces += 1
      a += 1
    end
    if count_spaces != 0
      count_spaces.times do
        (0...array.length-i-1).each do |j|
          temp = array[j+i]
          array[j+i] = array[j+i+1]
          array[j+i+1] = temp
        end
      end
      count = 0
    end
    a = 0
    count_spaces = 0
  end

  print array
  puts
end

remove_spaces("Natalia    loves    programming")
