require_relative "stack"
# Special Stack with get_min() method
# Finds minimum element in stack with O(1)time
# Can be used only Stack, no additional data structures are allowed

class SpecialStack < Stack
  def initialize
    @stack1 = Stack.new
    @stack2 = Stack.new #auxilliary stack
  end

  def push(num)
    if @stack2.empty?
      @stack2.push(num)
    elsif num < @stack2.top
      @stack2.push(num)
      @stack1.push(num)
    else
      @stack1.push(num)
    end
  end

  def pop
    if @stack1.top == @stack2.top
      @stack1.pop
      @stack2.pop
    else
      @stack1.pop
    end
  end

  def get_min
    return @stack2.top
  end
end

stack = SpecialStack.new
stack.push(6)
stack.push(3)
stack.push(8)
stack.push(1)
stack.push(2)
stack.pop
stack.pop
print stack.get_min
