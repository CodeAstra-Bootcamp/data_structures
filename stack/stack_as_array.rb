class Stack < Array
  attr_accessor :tail_index

  def push(val)
    raise "StackOverflow" if self.tail_index == self.length - 1

    self.tail_index ||= -1
    self.tail_index += 1
    self[self.tail_index] = val
  end

  def pop
    raise "StackUnderflow" if self.tail_index.nil?

    val = self[self.tail_index]
    self.tail_index -= 1
    self.tail_index = nil if self.tail_index == -1

    return val
  end

  def peep
    return nil if self.tail_index.nil?

    return self[self.tail_index]
  end
end
