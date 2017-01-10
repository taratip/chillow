require 'spec_helper'

describe House do
  it 'should take 5 arguments to construct a house object' do
    expect(House.new("123 Boston st.", "Boston", "MA", "02116", "650000")).to be_a(House)
  end

  it 'has readers for address, town, state, zip and price' do
    house = House.new("123 Boston st.", "Boston", "MA", "02116", "650000")
    expect(house.address).to eq("123 Boston st.")
    expect(house.city_or_town).to eq("Boston")
    expect(house.state).to eq("MA")
    expect(house.zip_code).to eq("02116")
    expect(house.asking_price).to eq("650000")
  end
end
