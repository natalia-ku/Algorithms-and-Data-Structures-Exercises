# Write a method removeAll that removes all occurrences of a particular value.
# For example, if a variable list contains the following values:
# [3, 9, 4, 2, 3, 8, 17, 4, 3, 18]
# The call of list.removeAll(3) would remove all occurrences of
# the value 3 from the list, yielding the following values:
# [9, 4, 2, 8, 17, 4, 18]

def remove_all(numbers, k)
  (0...numbers.length).each do |i|
    if numbers[i] == k
      (i...numbers.length-1).each do |j|
        numbers[j] = numbers[j+1]
      end
    end
  end
end

def remove_all2(n, k)
  j = 0
  (0...n.length).each do |i|
    if n[i] != k
      n[j] = n[i]
      j += 1
    end
  end
  return n[0...j]
end


def remove_spaces(n)
  j = 0
  (0...n.length).each do |i|
    if n[i] != " "
      n[j] = n[i]
      j += 1
    end
  end
  print n
end

a =  "Natalia     loves      coding"
puts a
remove_spaces(a)
# puts a
puts


#
# a = [3, 9, 4, 2, 3, 8, 17, 4, 3, 18]
# print a
# puts
# a = remove_all2(a, 3)
# print a
