# Write a function that takes 2 arguments; a linked list (ll) and on integer(n).
# The function should return the value of the nth node in the linked list.
#
# Notice that this problem has no assumptions that we had in the earlier problem.

require_relative 'linked_list'
require "minitest/autorun"

def length_of_linked_list(ll, n)
  current_node = ll.head
  return 0 if !(current_node)
  len = 1
  while !!(current_node.next)
    len += 1
    current_node = current_node.next
  end


  return "Input too large" if n > len
  current_node = ll.head
  (len - n).times do
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
    @short_linked_list = LinkedList.new
    @short_linked_list.insert(1)
    @new_linked_list = LinkedList.new
  end

  def test_length_of_long_linked_list
    assert_equal 100, length_of_linked_list(@long_linked_list, 100)
  end

  def test_length_of_short_linked_list
    assert_equal 1, length_of_linked_list(@short_linked_list, 1)
  end

  def test_length_of_new_linked_list
    assert_equal 0, length_of_linked_list(@new_linked_list, 0)
  end

  def test_nth_from_last_of_long_linked_list
    assert_equal 45, length_of_linked_list(@long_linked_list, 45)
    assert_equal "Input too large", length_of_linked_list(@long_linked_list, 120)
  end
end