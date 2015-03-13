require 'pry'

Max = 10



def play_hog
	score_1 = 0
	score_2 = 0
	total_1 = 0
	total_2 = 0

	def one_roll #score #player, once names are in place
		puts "Player, it's your turn.  How many dice would you like to roll (1-6)?\n\n"
		num_dice = gets.chomp.to_i
		dice = (1..num_dice).to_a
		dice_rolls = []
		sum = 0

		dice.each do |a|
			dice_rolls.push rand(1..6)
		end

		if dice_rolls.include? 1
			puts "Aw, you rolled a 1!  No points this time.\n\n"
		else	
			dice_rolls.each {|a| sum += a} 
		end

		if sum > 0
			puts "You scored #{sum} this round.\n\n"
		end
	
		return sum
	end

# TEST

	#puts "Player, your score so far is #{one_roll score_1}"
	
# RUN THE ROLLS

 loop do
 	score_1 = one_roll
 	total_1 += score_1
 	puts "Player, your total score so far is #{total_1}\n\n"

 	score_2 = one_roll
 	total_2 += score_2
 	puts "Player, your total score so far is #{total_2}\n\n"

 	if total_1 >= Max && total_2 >= Max
 		puts "It's a tie!"
 		return
 	elsif total_1 >= Max
 		puts "Player 1 wins, with #{total_1}"
 		return
 	elsif total_2 >= Max
 		puts "Player 2 wins, with #{total_2}"
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
		puts "You've chosen HOG!  Let's get started.\n\n"
		play_hog
	elsif answer == "p"
		puts "You've chosen pig!  Let's get started.\n\n"
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

# def one_pig_game

# p1_score = one_turn_pig
# p2_score = one_turn_pig

# if 
# p2_score = 0
# max_score = 10

# def one_turn_pig
# 	turn_total = 0
# 	loop do
# 		roll = rand(1..6)
# 		puts "You rolled a #{roll}.\n"

# 		if roll == 1
# 			puts "No points this time!\n"
# 			return 0
# 		else
# 			turn_total += roll

# 			puts "Your current score is #{turn_total}. Would you like to roll again? (y/n)\n"
# 				if gets.chomp = "n"
# 					return turn_total
# 				end
# 		end
# 	end
# end