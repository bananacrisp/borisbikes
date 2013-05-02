class Van
attr_reader :bikes

def initialize(bike=[])
   @bikes = bike
end

def pick_up(bike)
	@bikes.push(bike)
end

def drop_off
    @bikes.shift
end

end