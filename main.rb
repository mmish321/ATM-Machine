require "gosu"
require_relative "user"
require_relative "atm"


users = Array.new

data=File.read("users.txt")

lines = data.split("\n")

lines.each {|line| 
	line = line.split(",")
	users.push(User.new(line[0],line[1].to_i,line[2].to_f))
}




atm = ATM.new(users)
atm.start