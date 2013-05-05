require_relative 'module_transfer'

class GarageTest
  #include modules
  include Deliver

  #must initialize within the class (not the module)

  def initialize(bikes=[])
    @bikes = bikes
  end
  
  def bikes
   @bikes
  end
  
  def accept(bike)
   @bikes.push(bike)
  end

  def push_out
   @bikes.shift
  end

  def fix
   @bikes
  end
end
