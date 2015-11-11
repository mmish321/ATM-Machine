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
Please Pick a Choice #{user.name}!
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
			user.quick_cash(user.money,user)
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
		user.deposit(current,deposit_amount)
		print "Alright you now have $#{money + deposit_amount} in your account\n"
	end
	
	def withdraw(current)
		print "How much money would you like to withdraw from your account?\n"
		withdraw_amount = $stdin.gets.chomp.to_f
		user.withdraw(current,withdraw_amount)
		if user.withdraw == false
			"That is invalid amount sorry"
	end

	def quick_cash(money,user)
		print "Enter what amount you want to withdraw"
		quick_cash_amount = $stdin.gets.chomp.to_f
		print "Alright you now have #{money-quick_cash_amount.round(2)} now"
		print "Good Bye!"
	end

end
