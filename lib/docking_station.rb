class DockingStation
	def initialize(bikes=[])
		@bikes = bikes
		@max_bikes = bikes.size
	end

	def bikes
		@bikes
	end

	def populate
		@bikes = [:b1, :b2, :b3, :b4, :b5, :b6, :b7, :b8, :b9, :b10]
		@max_bikes = @bikes.size
	end

	def receive_bike?
		if @bikes.size == @max_bikes
		return 'Sorry, this station is full'
		else
		  @bikes.push(:b11)
	 	end
	end

	def release_bike
		@bikes.shift
	end
end

