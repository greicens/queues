class Queue

require_relative 'singly_linked_list'
  attr_reader :front, :contents

  def initialize(data=nil)
    @contents = SinglyLinkedList.new(data)
    @front = @contents.head
  end

  def enqueue(element)
    @contents.insert_at_end(element)
  end

  def dequeue
    if @contents.empty?
      nil
    else
      @contents.remove_from_start
    end
  end

  def inspect
    @contents.inspect.gsub(' ->', ' <-').sub('(head)', '(front)')
  end

  def empty?
    @contents.empty?
  end

end

newqueue = Queue.new(2)
newqueue.enqueue(3)
newqueue.dequeue
newqueue.inspect
newqueue.dequeue
p newqueue.empty?
newqueue.enqueue(9)
newqueue.enqueue(5)

p newqueue
