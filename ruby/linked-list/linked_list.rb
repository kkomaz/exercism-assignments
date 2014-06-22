
class Deque

  Element = Struct.new(:datum, :prev, :next)

  def initialize
    @head, @tail = nil, nil
  end

  def push(datum)
    new_element = Element.new(datum, @tail, nil)
    @tail.next = new_element if @tail
    @tail = new_element
    @head = @tail unless @head
  end

  def pop
    popped = @tail
    @tail = popped.prev
    popped.datum
  end

  def unshift(datum)
    new_element = Element.new(datum, nil, @head)
    @head.prev = new_element if @head
    @head = new_element
    @tail = @head unless @tail
  end

  def shift
    shifted = @head
    @head = shifted.next
    shifted.datum
  end

end