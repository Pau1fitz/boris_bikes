class Station

	def initialize
		@bikes = []
	end

	def dock(bike)
		@bikes << bike 
	end
	
	def bike_count
		@bikes.length 
	end
	
end