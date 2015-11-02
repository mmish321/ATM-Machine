
class ATM
	attr_reader :users
	attr_accessor :users

	def initialize(user)
		@users = users
	
	end


	def confirm_pin(users)
		input = $stdin.gets.chomp
		users.each {|user|
			if input.to_i == user.pin
				operate(user)
			
			
			end
		}

	end

	def operate(user)
		current = users(index)
		puts """
		Please Pick a Choice!
		1.Deposit
		2.Withdraw
		3.quick cash
		4.exit
		>
		"""
		option = $stdin.gets.chomp
		if option == 1
			user.deposit

		elsif option == 2
			user.withdraw
		elsif option == 3
			user.quick_cash
		elsif == 4
			print "Goody bye then!"
		else
			"Invald option, try again"
		end
			
	end

end