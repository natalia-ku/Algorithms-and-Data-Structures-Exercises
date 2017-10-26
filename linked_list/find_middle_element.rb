
class Node
  attr_accessor :data, :next

  def initialize(val, next_node=nil)
    @data = val
    @next = next_node
  end
end

class LinkedList
  def initialize
    @head = nil
    @size = 0
  end

  #How to find middle element of LinkedList in one pass
  def find_middle_element
    current = @head
    middle = @head
    length = 0
    while (current.next != nil)
      length += 1
      if length % 2 == 0
        middle = middle.next
      end
      current = current.next
    end
    if length % 2 == 1
      middle = middle.next
    end
    return middle
  end

  def add(value)
    if @size == 0
      @head = Node.new(value)
      @size += 1
    else
      current = @head
      while current.next != nil
        current = current.next
      end
      current.next = Node.new(value)
      @size += 1
    end
    return self
  end

  def add_in_order(value)
    if @size == 0
      @head = Node.new(value)
    elsif value < @head.data
      old_head = @head
      @head = Node.new(value, old_head)
    else
      current = @head
      while current.next != nil && current.next.data < value
        current = current.next
      end
      old_current_next = current.next
      current.next = Node.new(value, old_current_next)
    end
    @size += 1
    return self
  end


  def to_s
    return "[]" if @size == 0
    current = @head
    full_list = []
    while current.next != nil
      full_list += [current.data.to_s]
      current = current.next
    end
    full_list += [current.data.to_s]
    return full_list.join("->")
  end
end


linked_list = LinkedList.new()
# linked_list.add_in_order(3)
# linked_list.add_in_order(13)
# linked_list.add_in_order(13)
# linked_list.add_in_order(132)
# linked_list.add_in_order(1)
# linked_list.add_in_order(32)
# linked_list.add_in_order(193)
# linked_list.add_in_order(132)
# linked_list.add_in_order(1)
# linked_list.add_in_order(32)
# linked_list.add_in_order(193)

# linked_list.add_in_order(2)
# linked_list.add_in_order(3)
# linked_list.add_in_order(8)
# linked_list.add_in_order(6)
# linked_list.add_in_order(1)
# linked_list.add_in_order(4)

# puts linked_list.find_middle_element.data

#
linked_list.add_in_order(3)
linked_list.add_in_order(8)
linked_list.add_in_order(7)
linked_list.add_in_order(1)
linked_list.add_in_order(2)
#
#
puts linked_list.find_middle_element.data
