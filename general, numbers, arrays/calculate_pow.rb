# Different approach  to calculate pow(x,n)
# Time Complexity: O(n):
# Space Complexity: O(1):
def pow(x, n)
  if n == 0
    return 1
  elsif n % 2 == 0
    return pow(x, n/2) * pow(x, n/2)
  else
    return x*pow(x, n-1)
  end
end
puts pow(2,3)
puts pow(4,3)
puts pow(10,3)

def pow1(x, n)
  if n == 0
    return 1
  else
    return x * pow1(x, n-1)
  end
end
puts pow1(2,3)
puts pow1(4,3)
puts pow1(10,3)

# MEMOIZATION:
# Optimized pow() to O(logn) by calculating pow(x, y/2) only once and storing it.
def pow2(x, n)
  if n == 0
    return 1
  end
  temp = pow2(x, n/2)
  if n % 2 == 0
    return temp * temp
  else
    return x*temp*temp
  end
end

puts pow2(2,3)
puts pow2(4,3)
puts pow2(10,3)
