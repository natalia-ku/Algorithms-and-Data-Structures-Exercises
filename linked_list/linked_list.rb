class Node
  attr_accessor :data, :next

  def initialize(val, next_node=nil)
    @data = val
    @next = next_node
  end
end

class LinkedList
  attr_accessor :head, :size
  def initialize
    @head = nil
    @size = 0
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

  def delete(value)
    return nil if @size == 0
    if @head.data == value
      @head = @head.next
      @size -= 1
    else
      previous = @head
      current = @head.next
      while current != nil && current.data != value
        previous = current
        current = current.next
      end

      if current != nil
        previous.next = current.next
        @size -= 1
      end
    end
  end

  def size
    return 0 if @head == nil
    count = 0
    current = @head
    while current != nil
      count += 1
      current = current.next
    end
    return count
  end

  def max
    return nil if @head == nil
    current = @head
    max = current.data
    while current != nil
      if current.data > max
        max = current.data
      end
      current = current.next
    end
    return max
  end

  def include?(key)
    current = @head
    while current != nil
      return true if current.data == key
      current = current.next
    end
    return false
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
linked_list.add_in_order(3)
linked_list.add_in_order(13)
linked_list.add_in_order(13)
linked_list.add_in_order(132)
linked_list.add_in_order(1)
linked_list.add_in_order(32)
linked_list.add_in_order(193)
linked_list.add_in_order(132)
linked_list.add_in_order(1)
linked_list.add_in_order(32)
linked_list.add_in_order(193)

# print linked_list.to_s
