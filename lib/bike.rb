class Bike
	def initialize
		@working = true
	end

	def working?
		@working
	end

	def break!
		@working = false
		self
	end

	def fix!
		@working = true
		self
	end
end