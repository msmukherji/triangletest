require 'minitest/autorun'
require './hangman'

class TestWord < Minitest::Test
	def test_it_knows_guesses_left
		h = Hangman.new
		assert_equal h.guesses_left, 6
	end

	def test_it_counts_off_on_misses
		# if we can't write a test where you don't 
		# have access to the answer, 
		# write a test where you pick an answer
		h = Hangman.new "banana"
		h.check_guess "c"
		assert_equal h.guesses_left, 5
	end

	def test_it_can_display_the_board
		h = Hangman.new "banana"
		assert_equal h.board, "______"
		h.check_guess "a"
		assert_equal h.board, "_a_a_a"
	end

	def test_that_you_can_win
		word = Hangman::Words.sample #could also do with a chosen word
		# ^^because Words constant is defined 
		# inside Hangman class, we can get to it
		h = Hangman.new word
		word.split("").uniq.each { |letter| h. check_guess letter}
		
		# once the won? method is defined, you don't need the below anymore,
		# but just the assert h.won? farther below

		# refute h.board.include?("_")
		# assert_equal h.board, word

		# put these tests in based on comparison with the 
		# other number guessing game.  make sure the methods
		# are defined for this as well.
		assert h.over?
		assert h.won?
		refute h.lost?
	end

	def test_that_you_can_lose
		h = Hangman.new "papaya"
		# the below can be written &w(b c d e f g)
		misses = ["b","c","d","e","f","g"]
		misses..each { |letter| h.check_guess letter}

		assert h.lost?
	end
end

