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
    @head
  end

  def tail
    current_node = @head
    while current_node.next != nil
      current_node = current_node.next
    end
    current_node
  end

  def at_index(index)
    count = 0
    current_node = @head
    while count < index
      current_node = current_node.next
      count += 1
    end
    current_node
  end

  def pop
    count = 0
    current_node = @head
    while current_node.next != nil
      current_node = current_node.next
      count += 1
    end
    current_node = self.at_index(count - 1)
    current_node.next = nil
  end 

  def contains?(number)
    if @head.value == number
      puts true
    else
      current_node = @head
      while current_node.next != nil
        current_node = current_node.next
        if current_node.value == number
          puts true
          break
        elsif current_node.next.nil?
          puts false
        end
      end
    end
  end

  def find(value)
    count = 0
    current_node = @head
    while current_node.value != value
      current_node = current_node.next
      count += 1
    end
    puts count
  end

  def to_s
    string = ""
    current_node = @head
    while current_node.next != nil
      string.insert(-1, "(#{current_node.value})->")
      current_node = current_node.next
    end
    string.insert(-1, "(#{current_node.value})->")
    string.insert(-1, '(nil)')
    puts string
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
list.append(8)
list.append(9)
list.prepend(4)
list.prepend(3)
list.to_s