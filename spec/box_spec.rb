require 'spec_helper'

describe Box do
  it 'store the name of its owner' do
    joe_box = Box.new(Occupant.new("Joe", "Doe"))
    expect(joe_box.owner.first_name).to eq("Joe")
    expect(joe_box.owner.last_name).to eq("Doe")
  end
end
