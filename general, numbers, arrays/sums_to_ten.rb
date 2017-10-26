# Return two numbers from array which sum is 10
def sums_to_ten(data)
  data.sort!
  i = 0
  j = -1

  while j != i
    while data[j]>10
      j-=1
    end
    if data[j] + data[i] == 10
      return [data[j], data[i]]
    else
      data[i] += 1
    end
  end
  return -1

end

data = [3,4,5,6,3]
print sums_to_ten(data)
# 
# data = [12,12,23,54]
# print sums_to_ten(data)
