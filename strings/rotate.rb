def is_rotation(s1,s2)
  temp = s1 + s1
  if temp.include? s2
    return true
  else
    return false
  end
end

s1 = "doghouse"
s2= "usedogho"

print is_rotation(s1,s2)
