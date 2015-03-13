require 'minitest/autorun'
require './guessing_game'

class GuessingTests <MiniTest::Test
	def test_it_knows_guesses_left
		g = Game.new
		assert_equal g.guesses_left, 6
	end

	def test_it_has_picked_an_answer
		g = Game.new
		assert g.answer.is_a? Integer
	end

	def test_lets_you_know_if_hi
		g = Game.new
		response = g.check_guess 101
		assert_equal "your guess was too high", response
		assert_equal g.guesses_left, 5 # tests guesses left counter
	end

	def test_win
		g = Game.new
		response = g.check_guess g.answer
		assert_equal "you got it!", response
		# assert_equal g.won?
	end

	# def test_lose
	# 	g = Game.new
	# 	5.times {g.check_guess 101}
	# 	response = g.check_guess 101
	# 	# make the test guess 6 bad numbers	
	# 	assert_equal "out of guesses, you lose! answer: #{g.answer}", response
	# end

	# BETTER TEST:
	def test_lose
		g = Game.new
		6.times {g.check_guess 101}
		assert g.lost?
		assert g.won?
	end

end