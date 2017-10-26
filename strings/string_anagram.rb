def is_anagram?(s1, s2)
  return false if s1.length != s2.length
  s1 = s1.split("").sort!
  s2 = s2.split("").sort!
  (0...s1.length).each do |i|
    if s1[i] != s2[i]
      return false
    end
  end

  return true
end

s1 = "iceman"
s2 = "cinema"
print is_anagram?(s1,s2)
