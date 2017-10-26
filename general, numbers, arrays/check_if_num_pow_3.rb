# Given an integer, write a function to determine if
#it is a power of three.

def is_power_of_3?(n)
  return true if n==1
  result = false
  while n>0
    m = n%3
    if m == 0
      n = n/3
      if n == 1
        return true
      end
    else
      return false
    end
  end
  return result
end


puts is_power_of_3?(10)

puts is_power_of_3?(3)

puts is_power_of_3?(11)

puts is_power_of_3?(8)

puts is_power_of_3?(27)

puts is_power_of_3?(243)
