def merge_sort(array)
   if array.length <= 1
     return array
   end
  middle = array.length / 2
  left = array[0, middle]
  right = array[middle..-1]

  left = merge_sort(left)
  right = merge_sort(right)
  merge(left, right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    if left.first <= right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  result + left + right
end



# def shift(array)
#   (0...array.length).each do |i|
#     array[i] = array[i+1]
#   end
# print array
#
# end



a = [2,3,4,5,6,7]
 shift(a)

array = [7,6,5,9,8,4,3,1,2,0]
# p merge_sort(array)
