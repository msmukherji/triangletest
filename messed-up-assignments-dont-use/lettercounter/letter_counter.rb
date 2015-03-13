require 'pry'

puts "Please type a string to analyze."
input = gets.chomp.downcase

puts "You typed in: #{input}"

letters = input.split("")
	
range_alpha = ("a".."z")

# actual_letters = letters.select { |letter| range_alpha.includes?(letter )}
actual_letters = []

letters.each do |letter|
	if range_alpha.include?(letter)
		actual_letters.push letter	
	end
end


result = {}



actual_letters.each do |letter|
	# see if the letter is already in result
	# if so increment count
	# if not, add it to the hash and set count to 1

	# VVVV

	# if # letter is in result
	#   # increment count for that letter by 1
	# else
	#   # add to result with count 1
	# end
	# VVVV

	# could use result.has_key? or result.include?
	if result[letter]
	  # increment count for that letter by 1
	  # result[letter] += 1
	  old_count = result[letter]
	  result[letter] = old_count + 1
	else
	  # add to result with count 1
		result[letter] = 1
	end
end

puts "Result is: #{result.sort_by{|k,v| v}.reverse.to_h}"

# DEF ENCRYPT TEXT
###############################
#builds a hash with letters in the alphabet linked to numbers 0-25
arr_alpha = range_alpha.to_a

arr_alpha_num = []

arr_alpha.each_with_index do |tag, index|
	arr_alpha_num.push [tag, index]
end

hash_alpha_num = {}

arr_alpha_num.each do |k,v| 
	hash_alpha_num[k] = v
end
################################
#
# push value at key + 12 into a new array
arr_alpha_num
arr_beta.push 
#
################################

#join and print new array

# puts "Result is: #{result.sort.to_h}"
# this is sorting alphabetically


#puts "Result is: #{result}"