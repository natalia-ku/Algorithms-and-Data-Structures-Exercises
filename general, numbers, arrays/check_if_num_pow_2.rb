# Input : n = 4
# Output : Yes
# 22 = 4
#
# Input : n = 7
# Output : No
#
# Input : n = 32
# Output : Yes
# 25 = 32

def check_num(n)
  while n > 0
    if n % 2 == 0
      n = n/2
      if n == 1
        return true
      end
    else
      return false
    end
  end
end

def check_num2(n)
  # return n && !n&(n-1)
  while n > 0
    if n & 1 == 0
      n = n>>1
      if n == 1
        return true
      end
    else
      return false
    end
  end
end

puts check_num(4)
puts check_num(7)
puts check_num(32)
puts check_num2(4)
puts check_num2(7)
puts check_num2(32)
