module Capacity
  def capacity
    @capacity
  end

  def full?(items)
    items.count >= @capacity
  end
end
