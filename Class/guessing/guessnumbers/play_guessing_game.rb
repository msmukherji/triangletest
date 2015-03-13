require './guessing_game'
require './player'

g = Game.new

#p = Player.new # DumbAI.new or SmartAI.new, 
# IF those aren't subclasses of player

puts "Choose mode"
puts "1) Human"
puts "2) Dumb AI"
puts "3) Smart AI"
choice = gets.chomp.to_i


player_class = if choice == 1
	Player
elsif choice == 2
	DumbAI
else
	SmartAI
end
p = player_class.new
# ^^a better way to do the stuff you could do with the below
# if choice == 1
# 	p = Player.new
# elsif choice == 2
# 	p = DumbAI.new
# else
# 	p = SmartAI.new

until g.over?
	guess = p.get_guess
	puts "You guessed #{guess}"
	# print "What is your guess?"
	# guess = gets.chomp.to_i

	response = g.check_guess guess
	p.update_guess response
	puts response
end

puts "you lost, loser" if g.lost?