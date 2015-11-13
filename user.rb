class User
	attr_accessor :name, :pin, :money

	def initialize(name,pin,money)
		@name = name
		@pin = pin
		@money = money
	end

	def deposit(deposit_amount)
		money = @money + deposit_amount 
	end
	def withdraw(withdraw_amount)
		if withdraw_amount > money
			return false
		else
			money = @money-(withdraw_amount)
		end
	end

	def quickcash(user, quickcash_amount)
		 if quickcash_amount > user.money
			return false
		else
			user.money -= quickcash_amount
		end
	
		
	end
	
end