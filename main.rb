require "gosu"
require_relative "user"
require_relative "atm"
require_relative "window"
require_relative "cursor"


users = Array.new
is_testing = ARGV.first

	
data=File.read("users.txt")

lines = data.split("\n")

lines.each {|line| 
	line = line.split(",")
	users.push(User.new(line[0],line[1].to_i,line[2].to_f))
}

atm = ATM.new(users)
atm.start

if !is_testing
	window = Window.new(atm)
	window.show
end