require_relative "linked_list"



def switch_nodes(linked_list, node1, node2)
  current1 = linked_list.head
  current2 = linked_list.head
  previous1, previous2 = nil
  while current1 != nil || current1.data != node1
    previous1 = current1
    current1 = current1.next
  end
  while current2 != nil || current2.data != node2
    previous2 = current2
    current2 = current2.next
  end
  if current1 == nil && current2 == nil
    return false
  end

  second_node_temp = current2

  previous1.next = current2
  current2.next = current1.next

  previous2.next = current1
  current1.next  = second_node_temp

  print linked_list.to_s

end




linked_list = LinkedList.new()
linked_list.add(3)
linked_list.add(1)
linked_list.add(12)
linked_list.add(132)
linked_list.add(7)
linked_list.add(42)

switch_nodes(linked_list, 12, 7)
