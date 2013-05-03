class Person
  attr_reader :bike

  def rent bike
    @bike = bike
  end

  def return_bike_to station
    station.dock @bike
    @bike = nil
  end
end
