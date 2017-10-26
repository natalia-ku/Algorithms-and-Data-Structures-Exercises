def flatten(array)
  result = []
  array.each do |el|
    if el.class == Array
      flatten(el).each do |e|
        result << e
      end
    else
      result << el
    end
  end
  return result
end


  array = [1,[2,3,2,4],[23, [16]], 5]
  new_array =  flatten(array)
  print new_array
