class User
	attr_accessor :name, :pin, :money
	attr_reader :name, :pin, :money
	def initialize(name,pin,money)
		@name = name
		@pin = pin
		@money = money
	end

	def deposit
		print "How much money would you like to deposit?\n"
		deposit_amount = $stdin.gets.chomp.to_f
		print "Alright you now have $#{money + deposit_amount} in your account\n"
		puts "Good bye"
	end
	
	def withdraw
		print "How much money would you like to withdraw from your account?\n"
		withdraw_amount = $stdin.gets.chomp.to_f
		if withdraw_amount > money
			print "Sorry you don't have enough money"
		else
			print "Alright you now have $#{money-withdraw_amount} in your account\n"
			money = money-withdraw_amount
		end
	end

	def quick_cash
		
	end


end