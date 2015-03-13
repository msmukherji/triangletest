require 'pry'

Max = 10

def get_players
	puts "\nHow many people are playing?\n"
	num_players = gets.chomp.to_i

	range_players = (1..num_players)

	arr_players = []

	arr_range_players = range_players.to_a

	range_players.each do |person|
		puts "Player #{person}, what's your name?"
		player_name = gets.chomp
		arr_players.push player_name
	end
	
	players_and_scores = {}

	arr_players.each do |x|
		players_and_scores[x] = 0
	end

	print "\n\nAll right, #{arr_players.join(", ")}-- get ready to play! Press enter to continue.\n\n"
	$stdin.gets

end

def play_hog
	hash_players_scores = {}
	get_players
	# puts "Player 1, what's your name?\n\n"
	# name_1 = gets.chomp
	# puts "\nPlayer 2, what's your name?\n\n"
	# name_2 = gets.chomp
	# puts "\n#{name_1} and #{name_2}, get ready to play! Press enter to continue.\n\n"
	# $stdin.gets
	
	score_1 = 0
	score_2 = 0
	total_1 = 0
	total_2 = 0

	def one_roll name
		puts "#{name}, it's your turn.  How many dice would you like to roll (1-6)?\n\n"
		num_dice = gets.chomp.to_i
		dice = (1..num_dice).to_a
		dice_rolls = []
		sum = 0

		dice.each do |a|
			dice_rolls.push rand(1..6)
		end

		if dice_rolls.include? 1
			puts "\nAw, you rolled a 1!  No points this time.\n\n"
		else	
			dice_rolls.each {|a| sum += a} 
		end

		if sum > 0
			puts "\nYou scored #{sum} this round.\n\n"
		end
	
		return sum
	end
	
# RUN THE ROLLS

 loop do
 	name = name_1
 	score_1 = one_roll name_1
 	total_1 += score_1
 	puts "#{name}, your total score so far is #{total_1} points.\n\n"
 	name = name_2
 	score_2 = one_roll name_2
 	total_2 += score_2
 	puts "#{name}, your total score so far is #{total_2} points.\n\n"

 	if total_1 >= Max && total_2 >= Max
 		puts "It's a tie!  Game over!"
 		return
 	elsif total_1 >= Max
 		puts "Game over! Player 1 wins with #{total_1} points."
 		return
 	elsif total_2 >= Max
 		puts "Game over! Player 2 wins, with #{total_2} points."
 		return
 	end
 end

	
	

end

def play_pig
	puts "\n\nUNDER CONSTRUCTION"
end


def choose_game
	puts "\n\nWould you like to play hog or pig? (h/p)\n\n"
	answer = gets.chomp

	if answer == "h"
		puts "\n\nYou've chosen HOG!  Let's get started.\n\n"
		play_hog
	elsif answer == "p"
		puts "\n\nYou've chosen PIG!  Let's get started.\n\n"
		play_pig
	end
	# ACCOUNTING FOR INCORRECT INPUTS??
	# else 
	# 	loop do
	# 		puts "Please type 'h' or 'p'"
	# 		answer = gets.chomp
	# 		if answer == "h" || answer == "p"
	# 			return answer
	# 		else ""
	# 		end
	# 	end
	#end
end

# MAIN SCRIPT
puts "WELCOME TO UNGULATE GAMES!\n\n"
puts "   		  .
                d$F
              ;$$$F!               ,c
             ,$$$$F!            .dR9
             $$$$$!f         .,d$?XF
             $$$$J$bood$$$$$$$$"",dF
            ;$$$$$$$$$$$$A$$$F  :!$eu
           ;$$$$$$$$$$$$BA$$P xxX9?d$$$$$beu.
          d$$$$$$$$$$$$$$XR$U$$$$$$$$$$$$$$$$$bu
        .$$$$$$$$$$$$$$$$$$$$$$R$$$$$$$$$$$$$$$$$$bu.
        d$$$$$$$$$$$$$$$$$$$P?:?$$$$$$$$$$$$$$$$$$$$$$bc.
       ;$$$$$$$$$P" "97U$$$P:::?$$$$$$$$$$$$$$$$$$$$$$$$$$b.
      Jd$$$$$$$$$$___!d$$$P:::X$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$c
    ,d$$$$$$$$R$$$$$$$$$$$P:::X$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$c
 zd$$$$$$RRAAAA8B$$$$$$$$P:::X8$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$c
 bz$$""$$8A888$$$$??R$$$$$:::d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$b.
   ""?d$$$$???Tkod$$$$P?SUW$$$$$$$$$$$$$$$AAP$$$$$$$$$$$$$$$$$$$$$$$k
     `-<XXHHHAAAAAA88ddPP$$PP!?!A$$$$$$$$$A!!$$$$$$$$$$$$$$$$$$$$$$$$$L
          ""??tAAAAAAAAAAAAA'!A9d$$$$$$$$P!!X$$$$$$$$$$$$$$$$$$$$$$$$$$L
            !!: ""????'        ?$$$$$$$$P!!X$$$$$$$$$$$$$$$$$$$$$$$$$$$$
           '!!!h..             .$$$$$$$P!!XA$$$$$$$$$$$$$$$$$$$$$$$$$$$$b
           d$A!!!!!            d$$$$$P!!':AAA$$$$$$$$$$$$$$$P?I$$$$$$$$$$
          d$$$!d$8!           J$$$$$$P! '!AAAAA$$$$$$$$$$P>b$$$$$$$$$$$$P
         :$$$$$$$P           :$$$$$$!!  !!!!AAAAAAPPPPP?,d$$$$$$$$$$$$$$!
         '?$$$$$$            d$$$$$X!   '!!!!!!????f':;S8$$$$$$$$$$$$$P!'
         '!!TPP$             $$$$$Xf        ``` .+d$$$$$$$$$$$$$$$$P?!'
        x$$$bUP              <!TTR!     ..xeeddIT$d$$$$$$$$$$$$$$P?!'
       :$$$$$$              4$$$$$Xs$$$$$$$X$$??TT???????????T??!!''
       A$8333!              $$$$$$X""""""``             ''''
       $$$""""              <?$$$$$%
        ""'`               $bbdddF
                           $'$$$$
                           "":$$$"

puts "\n\n\n*******************************************************************************\n
*******************************************************************************\n\n\n"
choose_game
puts "\n\nWould you like to play again? (y/n)\n\n"
again = gets.chomp
unless again == "n"
	choose_game
end