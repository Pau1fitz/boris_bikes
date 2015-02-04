require_relative 'bike_container'

class Van

  include BikeContainer

  def pick_up_broken_bikes_from(station)
    station.unavailable_broken_bikes.each do |broken_bike|
      self.dock(broken_bike)
      station.bikes.delete(broken_bike)
    end
  end

end