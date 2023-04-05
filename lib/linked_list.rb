require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    if head == tail
      return
    end

    curr_node = tail

    while curr_node
      next_on_deck = curr_node.prev_node
      new_next = curr_node.prev_node
      new_prev = curr_node.next_node
      curr_node.next_node = new_next
      curr_node.prev_node = new_prev
      curr_node = next_on_deck
    end

    new_head = self.tail
    new_tail = self.head
    self.head = new_head
    self.tail = new_tail

  end
end
