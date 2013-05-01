#Module Transfer

module Transfer
	def transfer_in(bike)
		@bikes.push(bike)
	end
	def transfer_out
		@bikes.shift(4)
	end
end


#module Deliver

module Deliver
	def deliver(bike)
		@bike.push(bike)
	end
end