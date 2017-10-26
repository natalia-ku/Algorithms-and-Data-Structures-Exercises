# Print common characters of two Strings in alphabetical order
# Given two strings, print all the common characters
# in lexicographical order. If there are no common
#letters, print -1. All letters are lower case.


def print_chars(s1,s2)
  a1 = []
  a2 = []
  (0...s1.length).each do |i|
    a1[s1[i].ord - 'a'.ord] += 1
  end

  (0...s2.length).each do |i|
    a2[s2[i].ord - 'a'.ord] += 1
  end

  (0...26).each do |i|
    if a1[i] != 0 && a2[i] != 0
      min = min(a1[i], a2[i])
      (0...min).each do |j|
        puts "#{i + 'a'}"
      end
    end
  end
end

  def min(a,b)
    a < b ? a : b
  end

  s1 =  "geeks"
  s2 = "forgeeks"


  puts print_chars(s1,s2)
