class Station

	attr_reader :bikes
	def initialize(bike=[])
	   @bikes = bike
	end
	def rent_out
	   @bikes.shift
	end
	def release
		@bikes.shift
	end
	def rental_return(bike)
		@bikes.unshift(bike)
	end
	def replenish(bike)
		@bikes.push(bike)
	end
end