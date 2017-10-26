def binary_search(target)
  array = [1,2,3,4,5,6,7,8,9,10,11]
  min = 0
  max = array.length - 1
  while min <= max
    guess = (min + max)/2
    if array[guess] == target
      return guess
    elsif array[guess] < target
      min = guess + 1
    else
      max = guess - 1
    end
  end
  return -1
end # end of method
puts "Guess: "
puts binary_search(22)
