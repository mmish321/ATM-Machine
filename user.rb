class User
	attr_accessor :name, :pin, :money
	attr_reader :name, :pin, :money
	def initialize(name,pin,money)
		@name = name
		@pin = pin
		@money = money
	end

	
end