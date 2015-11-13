require_relative "user"
class ATM
	attr_reader :users, :adapter
	attr_accessor :users, :adapter, :current

	def initialize(users)
		@users = users
		@adapter = adapter
	end


	def start
		print "Welcome to Fake ATM\n"
		print "Please type your name\n"
		name = $stdin.gets.chomp
		print "Please type your pin\n"
		input = $stdin.gets.chomp
		found = false
		current = 0
		for user in users
			if input.to_i == user.pin && name == user.name
				found = true
				current = user
				break
			else
				found = false
			end
		end
		if found == true
			operate(current)
		else
			print "I'm sorry that is an invald pin, would you like to try again?\n"
			print "Press 1 for yes and 2 for no\n"
			restart = $stdin.gets.chomp.to_i
			if restart == 1
				start
			else
				print "good bye!"
			end
		end
	end

	def operate(current)
		print """
Please Pick a Choice #{current.name}!
1.Deposit
2.Withdraw
3.Quick cash
4.Exit
"""
print ">"
		option = $stdin.gets.chomp.to_i
		if option == 1
			deposit(current)
		elsif option == 2
			withdraw(current)
		elsif option == 3
			quick_cash(current)
		elsif option == 4
			print "Good bye then!"
		else
			print "Invalid option... Try again\n"
			operate(user)
		end	
	end

	def deposit(current)
		print "How much money would you like to deposit?\n"
		deposit_amount = $stdin.gets.chomp.to_f
		current.deposit(deposit_amount)
		print "Alright you now have $#{current.money + deposit_amount} in your account\n"
		print "Would you like to do something else?\n"
		print "Press 1 for yes and 2 for no\n"
		choice = $stdin.gets.chomp.to_i
		if choice == 1
			operate(current)
		elsif choice == 2
			print "Good bye"
		else
			print "invalid choice....restarting"
			start
		end
	end
	
	def withdraw(current)
		print "How much money would you like to withdraw from your account?\n"
		withdraw_amount = $stdin.gets.chomp.to_f
		current.withdraw(withdraw_amount)
		print "You know have #{current.money - withdraw_amount}"
	end

	def quick_cash(current)
print """Enter what amount you want to withdraw
		1.$20
		2.$30
		3.$50
		4.$60
		5.$100
		"""
		print ">"
		amount = $stdin.gets.chomp.to_i
		if amount == 1
			subtract(current, 20)
			current.quick_cash(current,20)
		elsif amount == 2
			subtract(current , 30)
			current.quick_cash(current,30)
		elsif amount == 3
			subtract(current, 50)
			current.quick_cash(current,50)
		elsif amount == 4
			subtract(current, 60)
			current.quick_cash(current,60)
		elsif amount == 5
			subtract(current, 100)
			current.quick_cash(current,100)
		else
			print "Invalid option... Try again\n"
		end	
	end
	private
			def subtract(current,amount)
				if current
				print "You now have $#{current-amount} in your account"
			end
end
end
