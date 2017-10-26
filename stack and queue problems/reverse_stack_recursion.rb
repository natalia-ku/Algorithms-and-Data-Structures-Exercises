require_relative "stack"
# Reverse Stack in-place using recursion

# x - item from stack to insert at bottom
def insert_at_bottom(stack, x)
   if stack.empty?
     stack.push(x)
     return stack
   end
   temp = stack.pop
   insert_at_bottom(stack, x)
   stack.push(temp)
end

def reverse (stack)
  if stack.empty?
    return stack
  end
  temp = stack.pop
  reverse(stack)
  insert_at_bottom(stack, temp)
  return stack
end

stack = Stack.new
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)
print stack.to_s
puts
print reverse(stack).to_s
