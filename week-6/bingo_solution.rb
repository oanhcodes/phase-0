# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create a string named bingo
  #Create a method that will randomly select one letter from string bingo
  #Create a method to randomly select a number between 1 and 100
    #Create an empty array 
      #Add random letter and number to this array
      #Return a string with a letter and number

# Check the called column for the number called.
  #The letters in bingo correspond to array index numbers 0-4
  #Iterate on the inner arrays of the multidimensional array to see if the number called is includes for the specific index number

# If the number is in the column, replace with an 'x'
  #Create a method that will replace the value of number with 'x'

# Display a column to the console
  #Create a new array called column_array
  #Fill this array with the all the values in the same column as the random letter

# Display the board to the console (prettily)
  #Print each array on its own line

# Initial Solution
=begin
class BingoBoard
  def initialize(board)
    @bingo_board = board
  end

  def random_letter
    @bingo = "bingo"
    @shuffled_letters = @bingo.split(//).shuffle
    @random_letter = @shuffled_letters[0]
  end
  
  def random_number
     @random_number = rand(1...100)
    @random_number
  end
  
  def bingo_call
    random_letter
    random_number
    @bingo_call = []
    @bingo_call[0] = @random_letter
    @bingo_call[1] = @random_number
    p @bingo_call.join.upcase
  end
  
  def check_column
    #b = 0, i = 1, n = 2, g = 3, o = 4
    
    @column = 0
    @column_array = []
    
    if @random_letter == "b"
      @column
    elsif @random_letter == "i"
      @column += 1
    elsif @random_letter == "n"
      @column += 2
    elsif @random_letter == "g"
      @column += 3
    else @random_letter == "o"
      @column += 4
    end 
      
    @bingo_board.each do |element|
      @column_array << element[@column]
      @column_array.each_index do |index|
        if @column_array[index] == @random_number
        @column_array[index] = "X"
        end
      end
      
    end
    
    p @column_array
   
  end
  
 def print_board
    @bingo_board.map! do |element|
      if element[@column] == @random_number
        element[@column] = "X"
      end
      p element
    end 
  end
end
=end

#DRIVER CODE FOR INITIAL SOLUTION (I.E. METHOD CALLS) GO BELOW THIS LINE
=begin
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.bingo_call
new_game.check_column
puts
new_game.print_board
puts
new_game.bingo_call
new_game.check_column
puts
new_game.print_board
puts
new_game.bingo_call
new_game.check_column
puts
new_game.print_board
puts
new_game.bingo_call
new_game.check_column
puts
new_game.print_board
=end

# Refactored Solution
class BingoBoard
  def initialize(board)
    @bingo_board = board
  end
  
  def bingo_call
    @random_letter = ["B","I","N","G","O"].sample #new method
    @random_number = rand(1...100)
    @bingo_call = []
    p @bingo_call[0,1] = [@random_letter, @random_number].join 
  end
  
  def check_column
    #b = 0, i = 1, n = 2, g = 3, o = 4
    @column = 0
    
    if @random_letter == "B"
      @column
    elsif @random_letter == "I"
      @column += 1
    elsif @random_letter == "N"
      @column += 2
    elsif @random_letter == "G"
      @column += 3
    else @random_letter == "O"
      @column += 4
    end 
      
    @bingo_board.map! do |element|
      if element[@column] == @random_number
        element[@column] = "X"
      end
      p element
    end 
  end 
end
    

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.bingo_call
new_game.check_column
puts
new_game.bingo_call
new_game.check_column
puts
new_game.bingo_call
new_game.check_column
puts
new_game.bingo_call
new_game.check_column
puts
new_game.bingo_call
new_game.check_column
puts
new_game.bingo_call
new_game.check_column
puts
new_game.bingo_call
new_game.check_column


#Reflection