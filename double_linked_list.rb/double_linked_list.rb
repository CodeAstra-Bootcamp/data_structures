require_relative '../linked_list'

class DoubleLinkedListNode < LinkedListNode
  attr_accessor :previous
end

class DoubleLinkedList < LinkedList
  def initialize
    @sentinel = DoubleLinkedListNode.new(nil)
  end

  def tail
    @sentinel.previous
  end

  def insert(val)
    node = DoubleLinkedListNode.new(val)
    node.next = head
    node.previous = @sentinel
    head.previous = node
    @sentinel.next = node
  end

  def delete
    @sentinel.next = @sentinel.next.try(:next)
    head.previous = @sentinel if head
  end
end
