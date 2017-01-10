require 'capacity'

class Truck
  include Capacity
  include Item
  attr_reader :boxes, :capacity

  def initialize(capacity)
    @boxes = []
    @capacity = capacity
  end

  def items
    @boxes
  end
  
  def unload
    @boxes.clear
  end
end
