class Station

	DEFAULT_CAPACITY = 10

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end

	def dock(bike)
		raise "Station is full" if full?
		@bikes << bike 
	end
	
	def bike_count
		@bikes.length 
	end
	
	def release(bike)
		@bikes.pop
	end

	def full?
		if @bikes.length >= @capacity
			true
		end
	end
		
	def available_bikes
		@bikes.reject {|bike| bike.broken? }
	end
	

end