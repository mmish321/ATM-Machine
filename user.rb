class User
	attr_accessor :name, :pin, :money
	attr_reader :name, :pin, :money
	def initialize(name,pin,money)
		@name = name
		@pin = pin
		@money = money
	end

	def deposit(user, deposit_amount)
		user.money+= deposit_amount
	end
	def withdraw(user, withdraw_amount)
		if withdraw_amount > user.money
			return false
		else
			user.money -= withdraw_amount
	end
	
end