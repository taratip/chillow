require 'spec_helper'

describe Truck do
  it 'has no box when construct a truck' do
    truck = Truck.new(5)
    expect(truck.boxes.size).to eq 0
  end
  it 'show maximum boxes it can hold' do
    truck = Truck.new(5)
    expect(truck.capacity).to eq 5
  end

  let(:truck) { Truck.new(5) }
  describe '#add_item' do
    it 'show current number of box is one when added' do
      occupant = Occupant.new("Joe", "Doe")
      box = Box.new(occupant)
      truck.add_item(box)
      expect(truck.boxes.size).to eq 1
    end
  end

  describe '#remove_item' do
    it 'show current number of box is zero when removed' do
      occupant = Occupant.new("Joe", "Doe")
      box = Box.new(occupant)
      truck.add_item(box)
      truck.remove_item(box)
      expect(truck.boxes.size).to eq 0
    end
  end

  describe '#full?' do
    it 'return true if the truck is full' do
      occupant = Occupant.new("Joe", "Doe")
      box = Box.new(occupant)
      truck.add_item(box)
      truck.add_item(box)
      truck.add_item(box)
      truck.add_item(box)
      truck.add_item(box)
      expect(truck.full?(truck.boxes)).to eq true
    end

    it 'return false if there is a space for box' do
      occupant = Occupant.new("Joe", "Doe")
      box = Box.new(occupant)
      truck.add_item(box)
      truck.add_item(box)
      truck.add_item(box)
      truck.add_item(box)
      truck.remove_item(box)
      expect(truck.full?(truck.boxes)).to eq false
    end
  end

  describe '#unload' do
    it 'should have no box when unloaded' do
      occupant = Occupant.new("Joe", "Doe")
      box = Box.new(occupant)
      truck.add_item(box)
      truck.add_item(box)
      truck.unload
      expect(truck.boxes.size).to eq 0
    end
  end
end
