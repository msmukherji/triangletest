require 'minitest/autorun'


class Game
	def initialize
		@guesses_left = 6
		@answer = rand 1..100
		@got_it = false
	end

	attr_reader :guesses_left, :answer
	# ^^this replaces the stuff below, verbatim, behavior is the same, etc.
	# def guesses_left
	# 	@guesses_left
	# end

	# def answer
	# 	@answer #rather than doing the randomizing here, 
	# 	# so that it stays the same
	# end
	def check_guess n
		@guesses_left -= 1
		if n > @answer
			"your guess was too high"
		elsif n < @answer
			"your guess was too low"
		else
			@got_it = true
			"you got it!"
		end
	end

	def won?
		@got_it
	end

	def lost?
		# ( @guesses_left == 0 )==> doesn't make you lose if you enter 7 guesses
		@guesses_left <= 0
	end

end











