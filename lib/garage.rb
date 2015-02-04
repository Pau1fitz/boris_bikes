require_relative 'bike_container.rb'

class Garage

include BikeContainer

  def fix_bikes
    bikes.each { |bike| bike.fix! }
  end

end