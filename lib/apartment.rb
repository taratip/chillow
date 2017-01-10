require 'dwelling'
require 'capacity'
require 'item'

class Apartment < Dwelling
  include Capacity
  include Item
  attr_reader :rent, :lease_start_date, :lease_end_date, :capacity, :occupants

  def initialize(address, city_or_town, state, zip, rent, lease_start_date, lease_end_date, capacity)
    super(address, city_or_town, state, zip)
    @rent = rent
    @lease_start_date = Date.parse(lease_start_date)
    @lease_end_date = Date.parse(lease_end_date)
    @occupants = []
    @capacity = capacity
  end

  def items
    @occupants
  end
end
