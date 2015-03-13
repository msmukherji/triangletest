require 'minitest/autorun'

class Person
	def initialize name_passed_in_during_new
	# need to store name_passed_in_during_new as an instance variable to refer to later
		@remembered_name = name_passed_in_during_new
	# the thing passed in during .new will be passed in to this @remembered_name
	end

	def name
		# name_passed_in_during_new won't work, it's a variable outside of scope
		# ^^is this a function that i have defined? no
		# ^^is this a variable defined in the scope or a global constant? no
		@remembered_name
		# variables with @ are instance variables; 
		# object knows it, and it sticks around after the method, 
		# but isn't global.  
	end

	def feed dog
		# needs to change the internal state of the dog,
		# so that later when we ask her if she's happy/hungry,
		# she knows!
		dog.get_fed!
	end
end
