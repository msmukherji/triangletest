#You have to roll once
# total_total = 0
# running_total = 0

#need to keep track of whose turn it is

max_score = 20
p1_score = 0
p2_score = 0

def roll_dice total_so_far
	roll = rand(1..6)
	#Decide to hold or roll

	puts "You rolled a #{roll}."
	if roll == 1
		#turn over to other player
		puts "Bad news :("
	else
		total_so_far += roll
		puts "Roll again? (turn total so far #{total_so_far}) (y/n)"
		decision = gets.chomp
		if decision == "y"
			return roll_dice(total_so_far + roll)
		else
			#add running_total to total_total, switch to other player
			return total_so_far + roll
			#it should now be player 2's turn
		
		end
	end
end

def take_turn
	roll_dice 0
end

#player 1
# turn_result = take_turn
# puts "Turn result was: #{turn_result 0}"

#until somebody wins
#player 1 takes a turn
#player 2 takes a turn
#repeat

until p1_score >= max_score|| p2_score >= max_score
	puts "It is now player 1's turn.  Current score: #{p1_score}"
	p1_score += take_turn
	puts "\n************************************************\n"

	puts "It is now player 2's turn.  Current score: #{p2_score}"
	p2_score += take_turn
	puts "\n************************************************\n"

end

puts "Player 1: #{p1_score}"
puts "Player 2: #{p2_score}"
if p1_score >p2_score
	puts "Player 1 wins!"
elsif p1_score == p2_score
	puts "It's a tie"
else
	puts "Player 2 wins!"
end