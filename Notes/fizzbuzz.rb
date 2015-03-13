# require "minitest/autorun"

def fizzbuzz max
	#array.new max is another way to do this
	array = (1..max).to_a
	#puts array

	result = []
	array.each do |i|
		if i % 3 == 0 && i % 5 == 0
			result.push :fizzbuzz
		elsif i % 3 == 0
			result.push :fizz
		elsif i % 5 == 0
			result.push :buzz
		else result.push i
		end
	#puts result
	end
	puts result
end
fizzbuzz(20)

# class TestAnagram <Minitest::Test
# 	def test_array
# 		assert_equal fizzbuzz(10),[1,2,3,4,5,6,7,8,9,10]
# 	end

# 	def test_fizzbuzz
# 		assert_equal fizzbuzz(3),[1,2,:fizz]
# 	end
# end
