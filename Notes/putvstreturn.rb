def function1 number
	if number.even?
		return :even
	else
		return :odd
	end
end
#returns even

def function2 number
	if number.even?
		puts :even
	else
		puts :odd
	end
end
#writes "odd" but returns nil

a = function1 2
b = function2 5

puts "a is #{a}"
puts "b is #{b}"

#generates: 
#odd
#a is even
#b is