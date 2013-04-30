require_relative 'module_bike'
require_relative 'module_transfer'

class Garage
	#include modules
	include Bike
	include Transfer

	def initialize(bikes=[])
		@bikes = bikes
		@max_bikes = bikes.size
	end
	def receive(bike)
		transfer_in(fix(bike))
	end
	def fix(bike)
		:fixed_bike
	end


	def gives
		@fixed_bikes = transfer_out
		@fixed_bikes
	end
end
