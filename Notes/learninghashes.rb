require 'pry'

players_and_scores = {"m"=>0, "s"=>0, "f"=>0, "a"=>0}

players_and_scores.each do |key, value|
 		name = key
 		score = 1
 		value += score
 		puts "#{name}, your total score so far is #{value} points.\n\n"
end