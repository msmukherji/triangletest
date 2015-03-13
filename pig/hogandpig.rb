require 'pry'
# Console_Screen.cls
# GET NAMES
puts "\n\nYou're playing Hog!\n\n"
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

puts "\n\n\n*************************************************************\n\n"
puts "Player 1, what's your name?\n\n"
Name_1 = gets.chomp
puts "\nPlayer 2, what's your name?\n\n"
Name_2 = gets.chomp
puts "\n#{Name_1} and #{Name_2}, get ready to play! Press enter to continue.\n\n"
$stdin.gets

# PLAYER 1 ROLL
def player1roll
	puts "#{Name_1}, how many dice would you like to roll (1-6)?\n\n"
	num_dice1 = gets.chomp.to_i 
	dice1 = (1..num_dice1).to_a
	dice_rolls1 = []
	sum1 = 0
	
	dice1.each_with_index do |a, index|
		dice_rolls1.push rand(1..6)
		unless dice_rolls1[index] == 1
			sum = 0
			dice_rolls1.each { |a| sum1+=a }
		end
	end

	if dice_rolls1.include? 1
		sum1 = 0
		puts "\nBummer, #{Name_1}!  You rolled a 1.  No points.\n\n"
	else
		puts "\n#{Name_1}, you rolled a total of #{sum1}\n\n"
	end
end

# PLAYER 2 ROLL
# should do the same as above, but without simply repeating code
# in the mean time, though, here's a repeat of the code
def player2roll
	puts "\n\n#{Name_2}, how many dice would you like to roll (1-6)?\n\n"
	num_dice2 = gets.chomp.to_i
	dice2 = (1..num_dice2).to_a
	dice_rolls2 = []
	sum2 = 0
	dice2.each_with_index do |a, index|
		dice_rolls2.push rand(1..6)
		unless dice_rolls2[index] == 1
			sum2 = 0
			dice_rolls2.each { |a| sum2+=a }
		end
	end

	if dice_rolls2.include? 1
		sum2 = 0
		puts "\nBummer, #{Name_2}!  You rolled a 1.  No points.\n\n"
	else
		puts "\n#{Name_2}, you rolled a total of #{sum2}\n\n"
	end
end

def compete
	player1roll
	player2roll
	if sum1 > sum2
		puts "#{Name_1} wins, #{sum1} to #{sum2} !"
	elsif sum2 > sum1
		puts "#{Name_2} wins, #{sum2} to #{sum1} !"
	else
		puts "It's a tie!"
	end
end

compete


