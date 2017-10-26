
require_relative "queue"

class MyStack
  def initialize
    @q1 = Queue.new
    @q2 = Queue.new
  end

  def push(element)
    @q2.enqueue(element)
    while !@q1.empty?
      @q2.enqueue(@q1.dequeue)
    end

    temp = @q1
    @q1 = @q2
    @q2 = temp
  end


  def pop
    @q1.dequeue
  end

  def to_s
    return @q2.to_s
  end
end

my_stack = MyStack.new
my_stack = my_stack.push(3)
# print my_stack.to_s
puts
my_stack = my_stack.push(1)
# print my_stack.to_s
puts
my_stack = my_stack.push(4)
# print my_stack.to_s
puts
my_stack = my_stack.push(11)
# print my_stack.to_s
puts
#
# my_stack = my_stack.pop
# print my_stack.to_s
# puts
# my_stack = my_stack.pop
# print my_stack.to_s
# puts
# my_stack = my_stack.pop
# print my_stack.to_s
# puts
