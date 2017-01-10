require 'spec_helper'

describe Apartment do
  it 'should take 8 arguments to construct a apartment object' do
    expect(Apartment.new("123 Boston st.", "Boston", "MA", "02116", "1300", "2016-09-01", "2017-09-01", 4)).to be_a(Apartment)
  end

  it 'has readers for address, town, state, zip, rent, lease start date and lease end date' do
    apartment = Apartment.new("123 Boston st.", "Boston", "MA", "02116", "1300", "2016-09-01", "2017-09-01", 4)
    expect(apartment.address).to eq("123 Boston st.")
    expect(apartment.city_or_town).to eq("Boston")
    expect(apartment.state).to eq("MA")
    expect(apartment.zip_code).to eq("02116")
    expect(apartment.rent).to eq("1300")
    expect(apartment.lease_start_date.to_s).to eq("2016-09-01")
    expect(apartment.lease_end_date.to_s).to eq("2017-09-01")
    expect(apartment.capacity).to eq 4
  end

  it 'has a reader for occupants' do
    apartment = Apartment.new("123 Boston st.", "Boston", "MA", "02116", "1300", "2016-09-01", "2017-09-01", 4)
    expect(apartment.occupants.size).to eq 0
  end

  let(:apartment) { Apartment.new("123 Boston st.", "Boston", "MA", "02116", "1300", "2016-09-01", "2017-09-01", 4) }
  describe '#add_item' do
    it 'occupant number should be one' do
      occupant = Occupant.new("John", "Doe")
      apartment.add_item(occupant)
      expect(apartment.occupants.size).to eq 1
    end
  end

  describe '#remove_item' do
    it 'occupant number should be zero' do
      john = Occupant.new("John", "Doe")
      apartment.add_item(john)
      apartment.remove_item(john)
      expect(apartment.occupants.size).to eq 0
    end
  end

  describe '#full?' do
    it 'return true if no vacant space' do
      apartment.add_item(Occupant.new("John", "Doe"))
      apartment.add_item(Occupant.new("John", "Doe"))
      apartment.add_item(Occupant.new("John", "Doe"))
      apartment.add_item(Occupant.new("John", "Doe"))
      expect(apartment.full?(apartment.occupants)).to eq true
    end

    it 'return false if there is vacant space' do
      apartment.add_item(Occupant.new("John", "Doe"))
      apartment.add_item(Occupant.new("John", "Doe"))
      apartment.add_item(Occupant.new("John", "Doe"))
      expect(apartment.full?(apartment.occupants)).to eq false
    end
  end
end
