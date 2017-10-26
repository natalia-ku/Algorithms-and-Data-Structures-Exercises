require_relative "stack"

class MyQueue
  def initialize
    @stack1 = Stack.new
    @stack2 = Stack.new #reversed stack1
  end

  def enqueue(element)
    @stack1.push(element)
  end

  def dequeue
    reverse()
    @stack2.pop
  end

  private
  def reverse
    while !@stack1.empty?
      @stack2.push(@stack1.pop)
    end
  end
end





class Queue
  def initialize
    @store = Array.new
  end

  def enqueue(element)
    @store.push(element)
  end

  def dequeue
    @store.shift
  end

  def front
    return @store.first
  end

  def size
    return @store.length
  end

  def empty?
    return @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
