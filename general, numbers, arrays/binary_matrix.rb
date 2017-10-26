# You are given a binary matrix whose each row is sorted.
#That means each row will have zeros at front and ones at the back.
#You need to find out the row which contains a maximum number of ones.
# [0 0 0 0 0 0 0 1 1 1 1 1]
# [0 0 0 0 1 1 1 1 1 1 1 1]
# [0 0 0 0 0 0 1 1 1 1 1 1]
# [0 0 0 0 0 0 0 0 0 1 1 1]
# [0 0 0 0 0 0 0 1 1 1 1 1]
# [0 0 0 0 1 1 1 1 1 1 1 1]
# Ans : second row and sixth with 8 ones. you will print [1,8] and [1,8];
# Required complexity O(M+N) + O(1) only.

def find_max(array)
  print_array(array)
  max = 0
  array_of_max_pairs = [] # to store row and max in the row

  (0...12).each do |i|
    if array[0][i] == 1
        array_of_max_pairs << [0, i]
        max = i
        break
    end
  end

  (1...6).each do |row|
    puts "row: #{row}, max: #{max}"
    if array[row][max] == 1

      max.downto(0).each do |i|
        if array[row][i] == 0
          if i + 1 < max
            max  = i + 1
            array_of_max_pairs = [[row, 12 - max]]
            break
          elsif i + 1 == max
            max = i + 1
            array_of_max_pairs << [row, 12 - max]
            break
          end
        end
      end # end of downto

    end # end of if
  end

  puts "print array of max pairs:"
  print array_of_max_pairs
end

def print_array(array)
  array.each do |r|
    r.each do |v|
      print v
    end
    puts
  end
end

binary_array  = Array.new(6){Array.new(12,0)}
binary_array[0] = [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1]
binary_array[1] = [0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1]
binary_array[2] = [0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1]
binary_array[3] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1]
binary_array[4] = [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1]
binary_array[5] = [0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1]

find_max(binary_array)
