class Person

  def rent_bike_from(station)
    @bike = station.rent
  end

  def return_bike(station)
    station.return(@bike)
    @bike = nil
  end

  def has_bike?
    !@bike.nil?
  end
end
