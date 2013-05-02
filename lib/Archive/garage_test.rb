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
end