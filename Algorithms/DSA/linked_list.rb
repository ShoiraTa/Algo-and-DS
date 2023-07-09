class Node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
  attr_accessor :value, :next_node
end

class LinkedList
  def initialize
    @head = nil
  end
  attr_accessor :head

  def add(value)
    if head.nil?
      @head = Node.new(value)
    else
      last_node = head
      last_node = last_node.next_node until last_node.next_node.nil?

      last_node.next_node = Node.new(value, nil)
    end
  end

  def insert_at(value, index)
    node = head
    current_index = 0
    until node.nil?
      if current_index == index
        next_node = node.next_node
        node.next_node = Node.new(value, next_node)
        return
      end
      current_index += 1
      node = head.next_node
    end
  end

  def prepend(value)
    if head.nil?
      @head = Node.new(value)
    else
      old_head = head
      @head = Node.new(value, old_head)
    end
  end

  def remove(value)
    return if head.nil?

    prev_node = nil
    node = head
    until node.nil?
      if node.value == value
        if prev_node.nil?
          @head = nil
        else
          prev_node.next_node = node.next_node
        end
        return
      end
      prev_node = node
      node = node.next_node
    end
  end

  def find(value)
    node = head
    until node.nil?
      return true if node.value == value

      node = node.next_node
    end
    false
  end

  def print
    node = head
    until node.nil?
      puts node.value
      node = node.next_node
    end
  end
end

ll = LinkedList.new
ll.add(10)
ll.add(20)
ll.prepend(30)
ll.remove(20)
ll.insert_at(11, 2)

p ll.print
