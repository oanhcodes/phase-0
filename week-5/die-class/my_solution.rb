# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    @num_of_sides = sides
    if sides < 1 
    	raise ArgumentError.new("Only numbers are greater than one allowed")
    end
  end

  def sides
    return @num_of_sides
  end

  def roll
  	@random_num = rand(1..@num_of_sides)
    return @random_num
  end
end

die=Die.new(6)
die.sides
die.roll

# 3. Refactored Solution







# 4. Reflection