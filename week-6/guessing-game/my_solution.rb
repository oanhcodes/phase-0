# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer
# Output: symbol, boolean
# Steps: 
=begin
	1. Create a class called GuessingGame
		-Intialize method will take an integer as input
		-Create an instance variable named answer and set it equal to the integer
	2. Create a method called guess that will take an integer as input
		-Create an instance variable named guess_number and set it equal to the integer
		-IF this integer is larger than answer, return high
		-ESLIF this integer is lower than answer, return low
		-ELSE return correct
	3. Identify if the guess is correct
		-IF guess is the same as the answer, return TRUE
		-IF guess is not the same as the answer, return FALSE
=end



# Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(integer)
  	@guess_number = integer
  	if @guess_number == nil
  		p nil
  	elsif @guess_number > @answer
  		p :high
  	elsif @guess_number < @answer
  		p :low
  	else
  		p :correct
  	end
  end

  def solved?
  	@last_guess = guess(@guess_number)
    unless @last_guess == :correct
    	p FALSE
    else
    	p TRUE  
  	end
  end
end 

game = GuessingGame.new(10)
game.solved?



# Refactored Solution






# Reflection