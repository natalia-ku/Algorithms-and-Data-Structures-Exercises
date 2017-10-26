# Write you own Power without using multiplication(*)
#and division(/) operators


def pow(a, b)
  if b != 0
    return multiply(a, pow(a, b-1))
  else
    return 1
  end
end

def multiply(x, y)
  if y != 0
    return (x + multiply(x, y-1))
  else
    return 0
  end
end

def pow_seq(a, b)
  result = 1
  
end

def mult(x,y)
  result = 0
  x.times do
    result += y
  end
  return result
end

puts pow(2,3)
puts pow(3,3)
puts pow(4,2)
puts pow(6,6)
