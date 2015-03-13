#TO DO: INCORPORATE PIG, MAKE PLAYING AGAIN START FROM CHOOSE GAME (LINE 99)

require 'pry'

Max = 10

def get_players
	puts "\nHow many people are playing?\n\n"
	num_players = gets.chomp.to_i

	range_players = (1..num_players)

	arr_players = []

	arr_range_players = range_players.to_a

	range_players.each do |person|
		puts "\n\nPlayer #{person}, what's your name?\n\n"
		player_name = gets.chomp
		arr_players.push player_name
	end
	
	players_and_scores = {}

	arr_players.each do |x|
		players_and_scores[x] = 0
	end

	print "\nAll right, #{arr_players.join(", ")}-- get ready to play! Press enter to continue.\n\n"
	
	$stdin.gets

	return players_and_scores 

end

def play_hog
	players_and_scores = get_players

	def one_roll name
		puts "\n#{name}, it's your turn.  How many dice would you like to roll (1-6)?\n\n"
		num_dice = gets.chomp.to_i
		dice = (1..num_dice).to_a
		dice_rolls = []
		sum = 0

		dice.each do |a|
			dice_rolls.push rand(1..6)
		end

		if dice_rolls.include? 1
			puts "\nAw, you rolled a 1!  No points this time. \n\n"#Press enter to continue.\n\n"
			#$stdin.gets
		else	
			dice_rolls.each {|a| sum += a} 
		end

		if sum > 0
			puts "\nYou scored #{sum} this round.\n\n"# Press enter to continue.\n\n"
			#$stdin.gets
		end
	
		return sum
	end
	
# RUN THE ROLLS
	possible_winners = {}

	loop do
	# HAVE EVERYONE ROLL ONCE, ADD THEIR ROUND SCORE TO THEIR TOTAL SCORE (value)
 		players_and_scores.each do |key, value|
 			name = key
 			score = one_roll name
 			value += score
 			players_and_scores[key] = value

 			puts "\n#{name}, your total score so far is #{value} points. Press enter to continue.\n\n"
 			puts "**********************************************************************"
 			$stdin.gets
 		end

 	# AFTER EVERYONE HAS ROLLED A ROUND, CHECK TO SEE IF ANYONE HAS WON YET
 		players_and_scores.each do |key, value|
 			if value >= Max
 				possible_winners.store(key, value)
 			end
 		end
 	# IF NO ONE HAS WON, LOOP AGAIN.  OTHERWISE, PRINT THE WINNER(S).
 		unless possible_winners.size == 0
 			if possible_winners.size > 1
 				puts "\nIt's a tie between #{possible_winners.keys.join(" and ")}! Game over.\n\n"
 				return
 			else
 				puts "\nGame over!  #{possible_winners.keys.join} wins!\n\n"
 				return
 			end
 		end
 	end
end

def play_pig
	
	players_and_scores = get_players

	def take_turn name
  		turn_total = 0
  		loop do
    		roll = rand(1..6)
    		puts "\n\n#{name}, you rolled a #{roll}.\n\n"

    		if roll == 1
     			puts "\n\nBummer!\n\n"
      		return 0

    		else
      		turn_total += roll

    			puts "Turn total so far: #{turn_total}. Roll again, #{name}? (y/n)\n\n"
      			if gets.chomp == "n"
        			return turn_total
      			end
    		end
  		end
	end

	possible_winners = {}

	loop do
	# HAVE EVERYONE ROLL ONCE, ADD THEIR ROUND SCORE TO THEIR TOTAL SCORE (value)
 		players_and_scores.each do |key, value|
 			name = key
 			score = take_turn name
 			value += score
 			players_and_scores[key] = value

 			puts "\n#{name}, your total score so far is #{value} points. Press enter to continue.\n\n"
 			$stdin.gets
			puts "**********************************************************************" 		
 		end

 	# AFTER EVERYONE HAS ROLLED A ROUND, CHECK TO SEE IF ANYONE HAS WON YET
 		players_and_scores.each do |key, value|
 			if value >= Max
 				possible_winners.store(key, value)
 			end
 		end
 	# IF NO ONE HAS WON, LOOP AGAIN.  OTHERWISE, PRINT THE WINNER(S).
 		unless possible_winners.size == 0
 			if possible_winners.size > 1
 				puts "\nIt's a tie between #{possible_winners.keys.join(" and ")}! Game over.\n\n"
 				puts "**********************************************************************"
 				return
 			else
 				puts "\nGame over!  #{possible_winners.keys.join} wins!\n\n"
 				puts "**********************************************************************"
				return 			
 			end
 		end
 	end
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
puts "\n\nWELCOME TO UNGULATE GAMES!\n\n"
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

