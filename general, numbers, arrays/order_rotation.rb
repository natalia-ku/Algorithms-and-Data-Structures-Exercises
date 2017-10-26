# def rotate_by(array, num)
#   (0...num).each do |i|
#     (array.length-1).downto(1) do |j|
#       temp = array[j]
#       array[j] = array[j-1]
#       array[j-1] = temp
#     end
#   end
#   return array
# end

def rotate_by(array, offset)
  offset.times do
    starting = array.length - offset
    (starting).downto(0) do |j|
      temp = array[j]
      array[j] = array[j-1]
      array[j-1] = temp
    end
  end
  return array
end

array = [1, 2, 3, 4, 5, 6, 7, 8]
print rotate_by(array, 2) # 7,8,1,2,3,4,5,6


def rotate_by2(array, offset)
  (0...offset).each do |i|
    ending = array.length-offset
    (0..ending).each do |j|
      temp = array[j]
      array[j] = array[j+1]
      array[j+1] = temp
    end
  end
  return array
end

array = [1, 2, 3, 4, 5, 6, 7, 8]
print rotate_by2(array, 2)# 3,4,5,6,7,8,1,2
