require 'spec_helper'

describe Dwelling do
  it 'should construct a dwelling object' do
    expect(Dwelling.new("123 Boston st.", "Boston", "MA", "02116")).to be_a(Dwelling)
  end

  it 'should has readers for address, city/town, state and zip code' do
    dwelling = Dwelling.new("123 Boston st.", "Boston", "MA", "02116")
    expect(dwelling.address).to eq("123 Boston st.")
    expect(dwelling.city_or_town).to eq("Boston")
    expect(dwelling.state).to eq("MA")
    expect(dwelling.zip_code).to eq("02116")
  end
end
