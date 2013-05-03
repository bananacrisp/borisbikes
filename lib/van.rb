require_relative 'bike_container'

class Van
  include BikeContainer

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def pickup_broken_bikes_from station
    @bikes.concat(station.release_broken_bikes)
  end

  def return_bikes_to station
    station.add_bikes bikes_available
    @bikes.clear
  end
end
