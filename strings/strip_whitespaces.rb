# O(n^2) complexity:
def strip_whitespaces(string)
  count = 0
  string = string.split("")
  size = string.length
  (0...size).each do |i|
    if i == size
      return string[0...i]
    end
    if string[i] == " "
      a = i + 1
      current_whitespaces = 1
      while string[a] == " "
        current_whitespaces += 1
        a += 1
      end

      j = i + current_whitespaces
      k = size - j

      k.times do
        string[j-current_whitespaces] = string[j]
        j += 1
      end

      size -= current_whitespaces
    end
  end

end

print strip_whitespaces("g  eeks   for ge  eeks")
