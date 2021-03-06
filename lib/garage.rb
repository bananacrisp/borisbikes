class Garage
	def initialize(bikes=[])
		@bikes = bikes
		@max_bikes = bikes.size
	end
	def bikes
		@bikes
	end
	def receive(bike)
		@bikes.push(bike.fix)
	end
	def receive_from(van)
		van.drop_off.each {|bike| receive(bike) }
		@bikes
	end
end