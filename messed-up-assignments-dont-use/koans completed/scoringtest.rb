def score #(dice)
	#array = []
  #array = [1,5,1,5,1]
  	# (1..5).each do
  	# 	array.push rand(1..6)
  	# end
  	# print array
 
 	score = 0

	def sum_1
		dice = [1,2,3,4,5]
  		repeats = 0
  		dice.each do |a|
  			if a == 1
  				repeats +=1
  				if repeats >=3
  					return 1000.to_i
  				end
  			end
  		end
  		if repeats < 3
  			return repeats*100.to_i
 	 	end
	end

	def sum_2
		dice = [1,2,3,4,5]
  		repeats = 0
  		dice.each do |a|
  			if a == 2
  				repeats +=1
  				if repeats >=3
  					return a*100.to_i
  				end
  			end
  		end
  	end

  	def sum_3
  	dice = [1,2,3,4,5]
  		repeats = 0
  		dice.each do |a|
  			if a == 3
  				repeats +=1
  				if repeats >=3
  					return a*100.to_i
  				end
  			end
  		end
	end

	def sum_4
  	dice = [1,2,3,4,5]
  		repeats = 0
  		dice.each do |a|
  			if a == 4
  				repeats +=1
  				if repeats >=3
  					return a*100.to_i
  				end
  			end
  		end
	end

	def sum_5
  	dice = [1,2,3,4,5]
  		repeats = 0
  		dice.each do |a|
  			if a == 5
  				repeats +=1
  				if repeats >=3
  					return a*100.to_i
  				end
  			end
  		end
  		if repeats < 3
  			return repeats*50.to_i
  		end
	end

	def sum_6
  	dice = [1,2,3,4,5]
  		repeats = 0
  		dice.each do |a|
  			if a == 6
  				repeats +=1
  				if repeats >=3
  					return a*100.to_i
  				end
  			end
  		end
	end

	print score = sum_1+sum_2+sum_3+sum_4+sum_5+sum_6



#   array.each do |a|
#   	if a == 2

#   if array.include?(1,1,1)
#   	sum = 1000
#   # elsif array.include?()
#   # array.each do |a|
#   # 	if a == 
#   	print sum
# end
end

score