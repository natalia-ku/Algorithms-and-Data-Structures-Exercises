#check if a number is a palindrome

def is_palindrome?(number)
  if number == reverse(number)
    return true
  else
    return false
  end
end

def reverse(n)
  reverse = 0
  while n != 0
    reverse = reverse*10 + n%10
    n = n/10
  end
  return reverse
end


 print is_palindrome?(123)
 print is_palindrome?(323)
