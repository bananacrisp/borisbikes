#Module Transfer

module Transfer
	def transfer_in_to(bike)
		@bike = bike
	end
	def transfer_out_of
		@bikes = bike
	end
end


#module Deliver

module Deliver
	def deliver(bike)
		@bike.push(bike)
	end
end