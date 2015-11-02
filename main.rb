require_relative "user"
require_relative "atm"


users = Array.new
atm = ATM.new(users)
users.push(User.new(2014,"Mary",678))
print "Hello! Are you ready to be poned?"
puts "Type pin\n>"
atm.confirm_pin(users)