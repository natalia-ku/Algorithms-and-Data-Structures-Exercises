#Given two rectangles, find if the given two rectangles overlap or not.
# l1: Top Left coordinate of first rectangle.
# r1: Bottom Right coordinate of first rectangle.
# l2: Top Left coordinate of second rectangle.
# r2: Bottom Right coordinate of second rectangle.
class Point
  attr_accessor :x, :y
  def initialize(x,y)
    self.x = x
    self.y = y
  end
end

def is_overlap?(l1, r1, l2, r2)
  # if one rectangle is on the left side
  if l1.x > r2.x || l2.x > r1.x
    return false
  end
  # if one rectangle is above
  if l1.y < r2.y || l2.y < r1.y
    return false
  end
  
  return true
end



l1 = Point.new(0,10)
r1 = Point.new(10,0)
l2 = Point.new(5,5)
r2 = Point.new(15,0)
puts is_overlap?(l1, r1, l2, r2)
