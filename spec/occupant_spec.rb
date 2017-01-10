require 'spec_helper'

describe Occupant do
  describe '.new' do
    it 'should accept two arguments' do
      expect(Occupant.new('John','Doe')).to be_a(Occupant)
    end

    it 'it has a reader for first name' do
      occupant = Occupant.new('John', 'Doe')
      expect(occupant.first_name).to eq("John")
    end

    it 'it has a reader for last name' do
      occupant = Occupant.new('John', 'Doe')
      expect(occupant.last_name).to eq("Doe")
    end
  end
end
