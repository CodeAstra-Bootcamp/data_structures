# Write a function that takes 2 arguments; a linked list (ll) and on integer(n).
# The function should return the value of the nth node in the linked list.
#
# Notice that this problem has no assumptions that we had in the earlier problem.

require_relative 'linked_list'

def find_nth_from_last(ll, n)
  len = ll.length
  if n > len
    return nil
  else
    n = len - n + 1
  end
  current_node = ll.head
  (n-1).times do
    if current_node.next != nil
      current_node = current_node.next
    else
      return nil
    end
  end
  return current_node.value
end

@long_linked_list = LinkedList.new
    (1..100).each do |i|
      @long_linked_list.insert(i)
    end
@short_linked_list = LinkedList.new
@short_linked_list.insert(1)

puts find_nth_from_last(@long_linked_list, 97)
