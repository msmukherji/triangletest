numbers = File.read ("numbers.txt")
#take each line and make it an array
num_lines = numbers.lines.count

arr_lines = numbers.split("\n").to_a
#can also do contents.lines, and then chomp the line returns

print arr_lines
print "\n*************************************\n"

arr2_lines = []

sum = 0
arr_lines.each do |line|
	arr2_lines.push line.split(",").collect{|n| n.to_i}
	#sum += line
end
print arr2_lines

# sum = 0
# arr2_lines.each { |i| sum+=i }

print "\n*************************************\n"


#add contents of each array
#add array sums

# CLASS SOLUTION

=begin
	
PROCESS
___________________
rescue file.read
split("\n") 
each 
split(",")
=> e

CODE
___________________
contents = File.read "numbers.txt"

count = 0
lines.each do |line|
	numbers_lin_line = line.split ","
	numbers_in_line.each do |n|
		count += n
	end
end
	
=end