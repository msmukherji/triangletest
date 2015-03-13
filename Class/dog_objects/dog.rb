require 'minitest/autorun'

class Dog
	def initialize name, person_who_owns=nil 
		# (default nil specified for person_who_owns if they don't have an owner; if nothing is passed in here, it gets nil)
		@name = name
		# @owner = "james"
		# ^^this would make every dog's owner james=> 
		@owner = person_who_owns
		# @happy = false
		@hungry = true
	end

	# shorthand for the below chunk=> attr_reader :name
	def name
		@name
	end

	def owner
		@owner
	end

	def bark!
		# puts "Woof! Woof! My name is #{@name}"
		# ^^puts it to console, but returns nil,
		# so you want to..?
		"Woof! Woof! My name is #{@name}"

		# vs #{name}, which calls the method.

		# Should do the same thing, but 
		# if your method does something to the variable,
		# it won't show it unless you call the method
		# (so call the method if you want the change)
	end

	def happy?
		! hungry?
	end

	def hungry?
		@hungry
	end

	def get_fed!
		@hungry = false 
	end

end