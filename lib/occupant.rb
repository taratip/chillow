class Occupant
  attr_reader :first_name, :last_name

  def initialize(firstname, lastname)
    @first_name = firstname
    @last_name = lastname
  end
end
