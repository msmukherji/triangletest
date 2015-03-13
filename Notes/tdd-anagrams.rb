
require "minitest/autorun"

def is_anagram? arr1, arr2
	# somewhere we could start:
	# if arr1.count == arr2.count
	# 	true
	# else
	# 	false
	# end
	# all of the above can also just be written:
	# => arr1.count == arr2.count ==> this will return "true"
	
	arr1.sort == arr2.sort
	# checks if the sorted arrays are identical

	#write a test to catch the mistakes for the following implementation
	#if arr2 == [:a,:c,:t]
	#	true
	# else
	# 	false
	# end

	#if arr2 == [:a,:c,:t] || arr2 == [:a]
	#	true
	# else
	# 	false

end

#failing test below; code should make this test pass when it's done
class TestAnagram <Minitest:Test
	def test_it_can_work
		assert is_anagram? [:c,:a,:t], [:a,:c,:t]
	end

	def test_checks_more_than_length
		#or assert !is_anagram
		refute is_anagram? [:c,:a,:t], [:b,:a,:t]
	end

	def test_singleton_array
		assert is_anagram? [:a], [:a]
	end

	#randomness in tests helps rule out code that is specific to certain conditions
	def test_random_array
		original = [1,2,3,4,5]
		shuffled = original.shuffled 
		assert is_anagram? original, shuffled
	end
	#slight complication of random tests:
	#if it's only one out of a thousand tests that fails, with its test set specific to that instance, it can be hard to track down
end









