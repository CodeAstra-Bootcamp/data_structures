# Implement a Queue using LinkedList
require_relative '../linked_list/linked_list'

class Kueue < LinkedList
  def peep
    return @sentinel.next.value
  end

  def push(val)
    @tail ||= @sentinel
    node = LinkedListNode.new(val)
    @tail.next = node
    @tail = node
  end

  def pop
    @sentinel.next = @sentinel.next.try(:next)
  end
end

# @kueue = Kueue.new
# 4.times do |i|
#   @kueue.push(i+1)
# end
# puts @kueue.peep
# puts @kueue.inspect
# @kueue.pop
# puts @kueue.peep
# puts @kueue.inspect
