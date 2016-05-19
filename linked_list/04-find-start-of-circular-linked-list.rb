# Write a method that takes a circular linked list as argument and returns 
# the zero-based-index of the start of loop of linked list.
# Assume that the linked list is circular.
# Circular linked list is a linked list of the shape 9

require_relative 'linked_list'
require "minitest/autorun"

def find_start_of_loop(ll)
  fast_runner = ll.head
  slow_runner = ll.head
  while !!(fast_runner.try(:next).try(:next)) 
    fast_runner = fast_runner.next.next
    slow_runner = slow_runner.next
    if fast_runner == slow_runner
      fast_runner = ll.head
      while (fast_runner != slow_runner)
        slow_runner = slow_runner.next
        fast_runner = fast_runner.next
      end

      return fast_runner.value
    end
  end
end

class TestJointLocation < Minitest::Test 
  def setup
    @circular_linked_list = LinkedList.new
    20.downto(1).each do |i|
      @circular_linked_list.insert(i)
    end
    current_node = @circular_linked_list.head
    older_node = nil
    while !!(current_node.next)
      older_node = current_node if current_node.value == 5
      current_node = current_node.next
    end
    current_node.next = older_node
    return @circular_linked_list
  end

  def test_linked_list_is_infinite
    assert_equal 5, find_start_of_loop(@circular_linked_list)
  end
end
