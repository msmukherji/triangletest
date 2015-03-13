require 'pry'

# FILL AN ARRAY WITH 1000 INSTANCES OF PAIRED DICE ROLLS
rolls = 1000
array = []
(1..rolls).each do
	array.push rand(1..6)+rand(1..6)
end

print "\nelements in array: #{array.count}\n"
# print array

# ADD ALL THE CONTENTS OF THE ARRAY
# QUIZ 2/1

sum = 0
array.each do |i|
	sum += i
end

print "\nsum: #{sum}\n"

# FIND THE AVERAGE
avg = sum.to_f/rolls.to_f
print "\navg: #{avg}\n"

# FIND AND PRINT THE DISTRIBUTION
distributions = {}

array.uniq.each do |j|
	distr = 0
	array_2 = array.select {|number| j == number}
	distr = array_2.count
	distributions.store(j,distr)
end

sorted_distributions = Hash[distributions.sort]
print "\ndistributions: #{sorted_distributions}\n"
puts " "

sorted_distributions.each do |k, v|
	print "#{k}:"
		(1..v).each do
			print "="
		end
	puts "\n"
# alternative syntax:
# results.sort_by { |n, count| n}.each do |n, count|
# 	puts "#{n.to_s.rjust 2} #{'='*count"}	
end





