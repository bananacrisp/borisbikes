class Station

	attr_reader :bikes

	def initialize(bike=[])
	   @bikes = bike
	end

	def rent_out
	   @bikes.shift
	end
end