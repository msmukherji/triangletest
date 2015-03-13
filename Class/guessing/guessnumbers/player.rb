require 'minitest/autorun'
require './guessing_game'

class Player
	def get_guess
		print "What is your guess?"
		guess = gets.chomp.to_i
	end

	def update_guess n
	end
end

class DumbAI <Player
	def get_guess
		rand 1..100
	end

	def update_guess n
	end
end

class SmartAI <Player 
# the different methods for get_guess 
# and update_guess will use the ones within 
# this since they are maximally specified here.  
# otherwise, they revert to the parent's version.
	def initialize
		@low = 0
		@high = 100
		# @last_guess 
		# ^^if you ever try to call update_guess before 
		# you call get_guess; also nice for documentation purposes
	end

	def get_guess
		new_guess = (@low + @high)/2
		@last_guess = new_guess 
		# ^^don't NEED to initialize this at the top, 
		# since it starts nil
	end

	def update_guess response
		if response.include? "high".downcase
			@high = @last_guess
		elsif response.include "low".downcase
			@low = @last_guess
		end
	end
end

