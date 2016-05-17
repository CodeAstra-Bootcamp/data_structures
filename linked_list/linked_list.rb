class Object
  def try(method_name)
    return nil if self.nil?

    self.send(method_name)
  end
end

class LinkedListNode
  attr_accessor :value, :next

  def initialize(val)
    self.value = val
  end
end

class LinkedList
  def initialize
    @sentinel = LinkedListNode.new(nil)
  end

  def head
    @sentinel.next
  end

  def insert(val)
    node = LinkedListNode.new(val)
    node.next = @sentinel.next
    @sentinel.next = node
  end

  def delete
    @sentinel.next = @sentinel.next.try(:next)
  end

  def length
    len = 0
    current_node = @sentinel
    while !current_node.next.nil?
      len += 1
      current_node = current_node.next
    end

    return len
  end
end

# class TestLinkedList < Minitest::Test
# end
