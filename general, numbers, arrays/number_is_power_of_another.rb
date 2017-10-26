# Check if a number is a power of another number
# Given two positive numbers x and y, check if y
#is a power of x or not


def check_number(x,y)
  if x == 1
    return y == 1
  end
  pow = 1
  while pow < y
    pow = pow * x
  end
  return pow == y
end



puts check_number(10,1)

puts check_number(10,1000)

puts check_number(10,1001)
