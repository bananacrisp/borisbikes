class Van
attr_reader :bikes

def initialize(bike=[])
   @bikes = bike
end

def take_away(bike)
	@bikes.push(bike)
end

def replenish
    @bikes.shift
end

def drop_off
	@bikes.shift
end

def pick_up(bike)
   @bikes.push(bike) 
end

end
