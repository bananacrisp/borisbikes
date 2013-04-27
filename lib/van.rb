class Van
	def initialize(bikes=[])
		@bikes = bikes
	end
	def bikes
		@bikes
	end
	def receive(bike)
		@bikes.push(bike.fix)
	end
	def receive_from(van)
		van.pick_up.each {|bike| receive(bike) }
		@bikes
	end
end