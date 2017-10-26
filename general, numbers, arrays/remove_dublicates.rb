# Using bitwise "AND" operator:
def remove_dublicates(array)
  return array & array
end

# Using iterations:
def remove_dublicates2(array)
  count = 0
  uniq_array = []
  array.each do |el|
    if !uniq_array.include? el
      uniq_array << el
    end
  end
  return uniq_array
end

def remove_dublicates3(array)
  uniq_array = []
  array.each do |el|
    has_elem = false
    uniq_array.each do |e|
      if e == el
        has_elem = true
        break
      end
    end

    uniq_array << el if !has_elem
  end
  return uniq_array
end

array = [4,3,2,4,1,2,4,7,6,2,0]
print remove_dublicates(array)
print remove_dublicates2(array)
print remove_dublicates3(array)
