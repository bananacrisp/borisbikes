#Hello Charlie...

<<<<<<< HEAD
#Hello there Matt ...
=======
#Checking changes
>>>>>>> cf3eeb7db233c354693dc74f93874a2f193c98c9

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
