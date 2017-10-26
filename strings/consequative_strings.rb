#Given a string of words find the one that
#occurs 2 consecutive times.
def find_string(string)
  array = string.split(" ")
  (1...array.length).each do |i|
    if (array[i] == array[i-1] && array[i] != array[i+1]) || (array[i] == array[i+1] && array[i] != array[i-1])
      return array[i]
    end
  end
end
puts find_string("cat cat dog bird")
puts find_string("dog dog dog cat")
