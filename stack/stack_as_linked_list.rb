# Implement a Stack using LinkedList
require_relative '../linked_list/linked_list'
class Stack < LinkedList
  def peep
    return @sentinel.next.value
  end

  def push(val)
    node = LinkedListNode.new(val)
    node.next = head
    @sentinel.next = node
  end

  def pop
    @sentinel.next = @sentinel.next.try(:next)
  end
end

# @stack = Stack.new
# 4.times do |i|
#   @stack.push(i+1)
#   puts @stack.peep
# end
# @stack.pop
# puts @stack.peep
