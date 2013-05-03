require_relative 'bike_container'

class DockingStation
  include BikeContainer

  attr_reader :bikes

  def initialize bikes, max_capacity= bikes.size
    @bikes, @max = bikes, max_capacity
  end

  def add_bikes bikes
    @bikes.concat bikes
  end

  def loan_bike_to person
    person.rent take_available_bike if bike_available?
  end

  def bike_available?
    !bikes_available.empty?
  end

  def take_available_bike
    @bikes.delete available_bike
  end

  def available_bike
    bikes_available.shift
  end

  def dock bike
    raise 'Station full' if full?
    @bikes << bike
  end

  def release_broken_bikes
    @bikes.inject([]) do |broken, bike| 
      if bike.broken?
        broken << @bikes.delete(bike)
      end
    end
  end
end
