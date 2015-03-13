def count_letters str
	
	#build up a hash of counts
	#look at each char in str in turn
	#either set count 1 if first seen
	#or update count if not

	counts {}

	str.downcase.each_char do |letter|
		counts[letter] ||= 0 # that's an OR; it adds 1 to counts[letter], 
		# unless counts[letters] is nil, in which case it makes counts[letter]=0
		# || if a, then a, else b
		counts[letter] += 1 # increments count by 1, won't work without the statement above
		# adds one to the value of the key "t"; 
		# the count for this letter should be nil + 1, 
		# which is not possible to do (undefined method + for nil:NilClass)
		
		# counts[letter] = counts[letter]+1, where counts[letter] is the current count
end

counts

end

string = "THis is a test string to count!!"

contents = File.read("file_to_read.txt")

# or File.open, then read each line, to do anything fancy; then close

num_lines = contents.chars.count # or content.split("").count
num_chars = contents.count("\n") # or call method lines: contents.lines.count
puts "This file contains #{num_lines} lines and #{num_chars} characters}"

puts count_letters(contents)