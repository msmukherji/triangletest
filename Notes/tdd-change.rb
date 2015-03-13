require "minitest/autorun"

def make_change amount
	#to avoid problem with float:
	#number_of_cents = amount * 100).to_i #to integer
	
	#take as many quarters
	num_quarters = (amount / 0.25).floor # / 25 for integer, etc below
	
	# when you divide an integer by an integer, machine
	# usually returns an integer.

	#from what's left, take dimes, etc. w nickels, pennies
	whats_left = amount - num_quarters * 0.25
	num_dimes = (whats_left / 0.1).floor

	#... nickels
	whats_left = whats_left - num_dimes * 0.1 
	# better structure:  whats_left -= numdimes * 10
	num_nickels = (whats_left / 0.05).floor

	#...pennies
	whats_left = whats_left - num_nickels * 0.05 
	#error in pennies field of array, so do:
	binding.pry
	num_pennies = (whats_left / 0.01).floor

	[num_quarters, num_dimes, num_nickels, num_pennies]

end

class TestAnagram <Minitest::Test
	def test_31
		assert_equal make_change(0.31), [1,0,1,1]
		#this is the answer you know should be generated 
		#for the amount given 
	end

	def test_131
		assert_equal make_change(1.31), [5,0,1,0]
	end
end

#using float messes up the number of cents