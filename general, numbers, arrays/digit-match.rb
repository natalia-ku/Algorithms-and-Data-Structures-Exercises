def digit_match(n1, n2)
  if n1 < 10 || n2 < 10
    if n1 == n2
      return 1
    else
      return 0
    end
  elsif  n1 % 10 == n2 % 10
    return 1 + digit_match(n1/10, n2/10)
  else
    return digit_match(n1/10, n2/10)
  end
end

print digit_match(123,323)
