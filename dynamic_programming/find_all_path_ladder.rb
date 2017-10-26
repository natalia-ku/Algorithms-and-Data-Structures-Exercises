# На вершине лесенки, содержащей N ступенек,
# находится мячик, который начинает прыгать по ним
# вниз, к основанию. Мячик может прыгнуть на следующую
# ступеньку, на ступеньку через одну или через 2.
# (То есть, если мячик лежит на 8-ой ступеньке,
# то он может переместиться на 5-ую, 6-ую или 7-ую.)
# Определить число всевозможных «маршрутов» мячика с
# вершины на землю.

def find_paths(n)
  return 1 if(n==1)
  return 2 if(n==2)
  return 5 if(n==3)
  return find_paths(n-1)+find_paths(n-2)+find_paths(n-3);
end

def find_paths2(n)
  array = []
  array[1] = 1
  array[2] = 2
  array[3] = 5
  (4..n).each do |i|
    array[i] = array[i-1] + array[i-2] + array[i-3]
  end
  return array[n]
end

puts find_paths(8)
puts find_paths(4)
puts find_paths(12)

puts find_paths2(8)
puts find_paths2(4)
puts find_paths2(12)
