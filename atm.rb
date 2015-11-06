
class ATM
	attr_reader :users
	attr_accessor :users

	def initialize(users)
		@users = users
	end


	def start
		puts "Please type your name\n"
		name = $stdin.gets.chomp
		print "Please type your pin\n"
		input = $stdin.gets.chomp
		users.each {|user|
			if input.to_i == user.pin && name == user.name
				operate(user)
				return
			else
				print "Please try again, would you like to restart? Press 1 for yes, 2 for no\n"
				choice = $stdin.gets.chomp.to_i
				if choice == 1
					start
				else
					print "See you later alligator"
				end
			end
		}
	end

	def operate(user)
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
			deposit(user.money)
		elsif option == 2
			withdraw(user.money)
		elsif option == 3
			user.quick_cash(user.money)
		elsif option == 4
			print "Good bye then!"
		else
			print "Invalid option... Try again\n"
			operate(user)
		end	
	end

	def deposit(money)
		print "How much money would you like to deposit?\n"
		deposit_amount = $stdin.gets.chomp.to_f
		print "Alright you now have $#{money + deposit_amount} in your account"
		print "Good bye"
	end
	
	def withdraw(money)
		print "How much money would you like to withdraw from your account?\n"
		withdraw_amount = $stdin.gets.chomp.to_f
		if withdraw_amount > money
			print "Sorry you don't have enough money"
		else
			print "Alright you now have $#{money-withdraw_amount} in your account\n"
			print "Good Bye"
		end
	end

	def quick_cash(money)
		print "Enter what amount you want to withdraw"
		quick_cash_amount = $stdin.gets.chomp.to_f
		print "Alright you now have #{money-quick_cash_amount} now"
		print "Good Bye!"
	end

end
