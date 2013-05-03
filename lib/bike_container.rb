module BikeContainer
  def bikes_available
    @bikes.reject{|bike| bike.broken?}
  end

  def full?
    @max == @bikes.size
  end
end
