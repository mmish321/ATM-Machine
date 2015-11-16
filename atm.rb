
class ATM
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
		users.each {|user| 
			if input.to_i == user.pin && name == user.name
				@current = user
				operate
				found = true
			end
		}
		if found == false
			print "Sorry that was in invalid name/pin!\n"
			print "Would you like to try again?\n"
			puts "Press 1 for yes, 2 for no"
			choice=$stdin.gets.chomp.to_i
			if choice == 1
				start
			else
				print "Good Bye!"
			end
		end
	end



	def operate
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
			deposit
		elsif option == 2
			withdraw
		elsif option == 3
			quick_cash
		elsif option == 4
			print "Good bye then!"
		else
			print "Invalid option... Try again\n"
			operate
		end	
	end

	def deposit
		print "How much money would you like to deposit?\n"
		deposit_amount = $stdin.gets.chomp.to_f
		current.money += deposit_amount
		print "You now have #{current.money}\n"
		another_choice
	end
	
	def withdraw
		print "How much money would you like to withdraw from your account?\n"
		withdraw_amount = $stdin.gets.chomp.to_f
		current.money -= withdraw_amount
		print "You now have #{current.money}\n"
		another_choice
	end

	def quick_cash
print """
Enter what amount you want to withdraw
	1.$20
	2.$30
	3.$50
	4.$60
	5.$100	
"""
print ">"
		amount = $stdin.gets.chomp.to_i
		if amount == 1
			subtract(20)	
			another_choice
		elsif amount == 2
			subtract(30)		
			another_choice
		elsif amount == 3
			subtract(50)		
			another_choice
		elsif amount == 4
			subtract(60)
			another_choice
		elsif amount == 5
			subtract(100)
			another_choice
		else
			print "Invalid option... Try again\n"
			quick_cash
		end	

	end
	def another_choice
		print "Would you like to do something else?\n"
		print "Press 1 for yes and 2 for no\n"
		choice = $stdin.gets.chomp.to_i
		if choice == 1
			operate
		elsif choice == 2
			print "Good bye"
		else
			print "invalid choice....restarting\n"
			start
		end
	end
	private
			def subtract(amount)
				current.money -= amount
				puts "You now have #{current.money} in your account\n"
			end
				
end

