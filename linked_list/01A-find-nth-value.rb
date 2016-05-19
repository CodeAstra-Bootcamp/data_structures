# Write a function that takes 2 arguments; a linked list (ll) and on integer(n).
# The function should return the value of the nth node in the linked list.
#
# Notice that this problem has no assumptions that we had in the earlier problem.

require_relative 'linked_list'
require "minitest/autorun"

def value_of_nth_node(ll, n)
  current_node = ll.head
  (n-1).times do
    return "Input too large" if !(current_node.next)
    current_node = current_node.next 
  end
  return current_node.value
end

class TestValueOfNthNode < Minitest::Test 
  def setup
    @long_linked_list = LinkedList.new
    (1..100).each do |i|
      @long_linked_list.insert(i)
    end
    @medium_linked_list = LinkedList.new
    20.downto(1).each do |j|
      @medium_linked_list.insert(j)
    end
    @short_linked_list = LinkedList.new
    @short_linked_list.insert(1)
  end

  def test_first_node_of_long_linked_list
    assert_equal 100, value_of_nth_node(@long_linked_list, 1)
  end

  def test_last_node_of_long_linked_list
    assert_equal 1, value_of_nth_node(@long_linked_list, 100)
  end

  def test_middle_node_of_long_linked_list
    assert_equal 46, value_of_nth_node(@long_linked_list, 55)
  end

  def test_first_node_of_short_linked_list
    assert_equal 1, value_of_nth_node(@short_linked_list, 1)
  end
  
  def test_nth_node_of_medium_linked_list
    assert_equal 15, value_of_nth_node(@medium_linked_list, 15)
    assert_equal 20, value_of_nth_node(@medium_linked_list, 20)
    assert_equal "Input too large", value_of_nth_node(@medium_linked_list, 21)
  end
end
