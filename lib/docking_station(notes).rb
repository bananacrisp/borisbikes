class DockingStation
	def initialize (bikes=[])
		@bike = bikes
		#here we are initializing the .new and passing in the array into 'bikes'
	end




	def stock
		@bikes
		#the method of stock is referencing the array of 'bikes' via the instance variable of @bikes
	end

	def release
		@bikes.shift
		stock
		#we are removing the first :bikeA from the array using 'shift' 
	end

	def return
		@bikes.push(:bikeD)
		stock
	end
end

