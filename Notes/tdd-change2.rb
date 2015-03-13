require "minitest/autorun"

def make_change amount, coins=[25,10,5,1]
	
	result = []
	number_of_cents = (amount * 100).to_i
	whats_left = number_of_cents
	
	coins.each do |coin_value|
		amount_of_coin = whats_left / coin_value
		result.push amount_of_coin
		whats_left -= amount_of_coin * coin_value
	end

	result
end
	
	#old implementation
	# amt_0 = (number_of_cents / coins[0]) 
	# #or do result[0] = number_of_cents...
	# whats_left -= amt_0 * coins[0]
	
	# amt_1 = (whats_left / coins[1])
	# whats_left -= amt_1 * coins[1]

	# amt_2 = (whats_left / coins[2])
	# whats_left -= amt_2 * coins[2]

	# amt_3 = (whats_left / coins[3])
	


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