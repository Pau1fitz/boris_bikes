module BikeContainer

	DEFAULT_CAPACITY = 10

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end 

	def capacity=(value)
		@capacity = value
	end

	def bikes
		@bikes ||= []
	end

#########################################
	def dock(bike)
		raise "Station is full" if full?
		bikes << bike 
	end
	
	def bike_count
		bikes.length 
	end
	
	def release(bike)
		bikes.pop
	end

	def full?
		if bikes.length >= capacity
			true
		end
	end
		
	def available_bikes
		bikes.reject {|bike| bike.broken? }
	end	
end