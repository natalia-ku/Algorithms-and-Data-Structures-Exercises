# Write a method evens that accepts an integer parameter n and that returns the integer formed by removing the odd digits from n.
# evens(8342116)	8426
#evens(-34512)	-42



def even_digits(num)
  result = 0
  k = 1
  while num > 0
    if (num % 10) % 2 == 0
      result = result * 10 + num % 10
    end
    num /= 10
  end
  result = reverse(result)
  return result
end

def reverse(n)
  reverse = 0
  while n != 0
    reverse = reverse*10 + n%10
    n = n/10
  end
  return reverse
end




puts even_digits(8342116)
puts even_digits(34512)
