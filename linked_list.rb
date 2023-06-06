class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
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

  def prepend(data)
    current_node = @head
    node = Node.new(data)
    node.next = current_node
    @head = node
  end

  def size
    count = 1
    current_node = @head
    while current_node.next != nil
      current_node = current_node.next
      count += 1
    end
    count
  end

  def header
    puts "Head node value is #{@head.value} and the next value (pointer) is #{@head.next.value}"
  end

  def tail
    current_node = @head
    while current_node.next != nil
      current_node = current_node.next
    end
    puts "The last value in the linked list is: #{current_node.value}"
  end

  def at_index(index)
    count = 1
    current_node = @head
    while count < index
      current_node = current_node.next
      count += 1
    end
    current_node
  end

  def pop
    count = 1
    current_node = @head
    while current_node.next != nil
      current_node = current_node.next
      count += 1
    end
    current_node = self.at_index(count - 1)
    current_node.next = nil
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
list.append(7)
list.prepend(4)
list.pop
list.tail