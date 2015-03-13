require 'pry'

def score(dice)
  score = 0
  dice.uniq.each do |i|
    count = dice.count i
    weight = if i == 1 then 10 else i
    
    if count >= 3
      return score += weight * 100
    end
binding.pry

    if count > 0 && i == 1 && i == 5
      score += count * weight * 10
    end
  end
  # if dice == []
  #   score = 0
  # end
end
end

score [1,2,3,4,5]

binding.pry