require_relative 'bike_container.rb'

class Garage

  include BikeContainer

  

  def accept(bike)
    bike.fix!
    dock(bike)
  end

end