class LinkedList
  attr_accessor :size, :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(data)
    if @head.nil?
      node = Node.new(data)
      @head = node
    else
      current_node = @head
      new_node = Node.new(data)
      while current_node.next != nil
        current_node = current_node.next
      end
      current_node.next = new_node
    end
  end
end

class Node
  attr_accessor :next, :value

  def initialize(value)
    @value = value
    @next = nil
  end
end


list = LinkedList.new
list.append(5)
list.append(6)
puts list