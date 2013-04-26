class Person

	def bike(bike)
		@bike = bike
	end

	def has_bike?
		@bike
	end

	def give_bike_back
		bike_to_return = @bike
		@bike = nil
		bike_to_return
	end
end