class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  def pop
    pop_value = @data
    @data = @data.next_node
    return pop_value
  end
end

def reverse_list(list, previous=nil)
  current_head = list.next_node
  list.next_node = previous

  if current_head
    reverse_list(current_head, list)
  else
    list
  end
 
end

node1 = LinkedListNode.new(27)
node2 = LinkedListNode.new(98, node1)
node3 = LinkedListNode.new(7, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)
