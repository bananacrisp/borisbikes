class DockingStation

  def initialize(bikes=[])
    @stock = bikes
    @max_bikes = @stock.size
  end

  def stock
    @stock.select { |bike| !bike.broken? }
  end

  def rent
    if @stock.size > 0
      @stock.pop
    else
      raise Error
    end
  end

  def return(bike)
    if @stock.size < @max_bikes
      @stock.push(bike)
    else
      raise Error
    end
  end

  def broken_bikes
   @stock.select { |bike| bike.broken? }
  end

end
