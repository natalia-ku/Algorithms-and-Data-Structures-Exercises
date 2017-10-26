def is_anagram?(s1, s2)
  return false if s1.length != s2.length
  counts = Array.new(256 , 0)

  s1.split("").each do |c|
    counts[c.ord] += 1
  end
  s2.split("").each do |c|
    counts[c.ord] -= 1
  end
  counts.each do |i|
    if i != 0
      return false
    end
  end
  return true
end

s1 = "iceman"
s2 = "cinema"
print is_anagram?(s1,s2)
