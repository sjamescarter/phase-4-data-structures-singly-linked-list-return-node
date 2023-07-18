require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    if head.nil?
      return
    end

    last_node = head
    index = 1
    while last_node.next_node
      last_node = last_node.next_node
      index += 1
    end

    if n > index || n < 1
      return
    end

    index_node = head
    (index - n).times { index_node = index_node.next_node }
    index_node.value
  end
end
