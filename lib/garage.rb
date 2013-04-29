class Garage

def initialize(bike=[])
  @bike = bike
end

def bike
  @bike
end

def receive(bike)
  @bike.push(bike)
end
end
