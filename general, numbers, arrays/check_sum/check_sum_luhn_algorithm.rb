def check_sum(array)
  sum = 0
  array = array.map{|s| s.to_i}
  (array.length-1).downto(0) do |i|
    if (i % 2 != 0)
      sum += array[i]
    else
      res = array[i] * 2
      if res.to_s.length > 1
        res -= 9
      end
      sum += res
    end
  end
  if sum % 10 == 0
    return true
  else
    return false
  end
end

def check_sum2(array)
    if array.include? "?"
      ind = array.index("?")
      array[ind] = -1
      array = array.map{|s| s.to_i}
      (0..array.length-1).each do |n|
        array[ind] = n
        if check_sum(array) == true
          return array
        end
      end
    else
      (0...array.length-1).each do |i|
        array2 = []
        array2 = array.clone
        array2[i], array2[i+1] = array2[i+1], array2[i]
        if check_sum(array2) == true
          return array2
        end
      end
    end
end # end of method

t = gets.chomp.to_i
t.times do
  input = gets.chomp.split("")
  result = check_sum2(input).join("")
  puts result
end
