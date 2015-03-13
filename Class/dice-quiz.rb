require 'minitest/autorun'
require 'pry'
 
# Implement these classes to get the specs below to pass
class Dice
	def initialize sides_given
		@dice = []
		(1..sides_given).each do |x|
			@dice.push x
		end
		# simpler: @sides = sides_given
	end

	def sides
		@sides = @dice.count
		# and then here you would just need @sides
	end

	def roll
		rand(1..sides) #could also use @sides, doesn't matter.
		# you don't need the parens
	end

	def loaded?
		false
	end
end
 
class LoadedDice < Dice #loaded dice is a subclass of dice
	def roll
		# 'super' means call the function in my parents
		# could do super + 1
		# roll once; if below average, roll again
		first_roll = super
			if first_roll < (@sides/2)
				super
			else
				first_roll
			super
		end
	end
end
 
 
class TestDice < MiniTest::Test
  def test_it_knows_how_many_sides_it_has
    d7 = Dice.new 7 # Take that, geometry
    assert_equal 7, d7.sides
  end
 
  def test_it_rolls_a_reasonable_range
    d20 = Dice.new 20
    rolls = []
    100.times { rolls.push d20.roll }
 
    rolls.each do |value|
      assert_includes (1..20), value
    end
 
    assert rolls.uniq.count > 5
  end
 
  def test_it_rolls_a_fair_distribution_when_unloaded
    d6 = Dice.new 6
    total = 0
    1000.times { total += d6.roll }
    average = total / 1000.0
    assert_in_epsilon 3.5, average, 0.1
  end
 
  def test_it_knows_when_its_not_loaded
    dice = Dice.new 13
    assert !dice.loaded?
  end
 
 
  # Work on these last, if time permits
 
  def test_it_lies_when_loaded
    dice = LoadedDice.new 13
    assert !dice.loaded?
  end
 
  def test_it_rolls_off_when_loaded
    d6 = LoadedDice.new 6
    total = 0
    1000.times { total += d6.roll }
    average = total / 1000.0
    assert average > 3
  end
end