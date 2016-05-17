# Write a method that takes a circular linked list as argument and returns the zero-based-index of the start of loop of linked list.
#
# Assume that the linked list is circular.
# Circular linked list is a linked list of the shape 9

require_relative 'linked_list'

def find_index_of_start_of_loop(ll)
  ele1 = ll.head.next
  ele2 = ll.head.next.next

  while ele1 != ele2
    ele1 = ele1.next
    ele2 = ele2.next.next
  end

  ele1 = ll.head

  while ele1 != ele2
    ele1 = ele1.next
    ele2 = ele2.next
  end
  return ele2.value
end

# ll = LinkedList.new
# ll.insert(1)
# tail = ll.head
# 6.times do |i|
#   ll.insert(i+1+1)
# end
#
# tail.next = ll.head.next.next.next
# puts find_index_of_start_of_loop(ll)
