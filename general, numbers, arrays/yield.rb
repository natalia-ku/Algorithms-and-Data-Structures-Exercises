candy = [3, 4, 6, 8]
candy_triple = candy.map {|n| n * 3}

puts candy_triple

def triple
  puts "We are in method"
  yield
  puts "Back to method"
end

triple {puts "Not in the method now!"}


def introduction(name)
  yield(name)
  puts "Nice to meet you!"
  yield("Amanda")
  yield(name)
  yield("John")
end

introduction("Natalia") {|n| puts "My name is #{n}!"}


def show_number number = 10
  i = 0
  while i < number
  method(i)
    i += 1
  end
end

def method (n)
puts "the number is #{n}"
end


show_number do |num|
  puts "the number is #{num}"  # if I modify num here, the i in method does not change
end
