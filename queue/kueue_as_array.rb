# Implement a Queue using Array
class Kueue < Array
  attr_accessor :tail_index, :head_index


  def push(val)
    puts self.tail_index
    puts self.head_index
    raise "StackOverflow" if (self.tail_index == self.head_index) && (self.head_index != nil)

    self.tail_index ||= -1
    self.head_index ||= -1
    self[(self.tail_index + 1)%self.length] = val
    self.tail_index = (self.tail_index + 1)%self.length
  end

  def pop
    raise "StackUnderflow" if self.head_index.nil?

    self.head_index = (self.head_index + 1)%self.length
    val = self[self.head_index]
    self[self.head_index] = nil
    self.head_index = nil if self.head_index == -1

    return val
  end

  def peep
    return nil if ((self.head_index + 1)%self.length).nil?

    return self[(self.head_index + 1)%self.length]
  end
end

# s = Kueue.new(8)
# 8.times do |i|
#   s.push(i+1)
# end
# puts s.inspect
#  s.pop
#  s.pop
#  s.pop
#  s.pop
# puts s.inspect
# s.push(11)
# s.push(12)
# s.push(13)
# s.push(14)
# puts s.inspect
#  s.pop
#  s.push(15)
# puts s.inspect
