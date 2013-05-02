#Person

class Person
	#include modules?
	def has_a_bike?
		if @bike == nil
			return false
		else
			return true
		end
		#can be written as !@bike.nil?
	end

	def rent(bike)
		@bike = bike
	end

	def crash(bike)
		@bike = bike
	end

	def return(bike)
		@bike = nil
	end
end