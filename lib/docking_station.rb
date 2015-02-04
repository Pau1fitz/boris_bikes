require_relative 'bike_container.rb'

class Station

	include BikeContainer

	DEFAULT_CAPACITY = 10

	def initialize(options = {})
		@capacity = options.fetch(:capacity, capacity)
	end
end