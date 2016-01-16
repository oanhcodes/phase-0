# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create a string named bingo/array of strings with bingo
  #Create a method that will randomly select one letter from bingo
  #Create a method to randomly select a number between 1 and 100
  #Call the letter and number together

# Check the called column for the number called.
  #The letters in bingo correspond to array index numbers 0-4
  #Iterate on the inner arrays of the multidimensional array to see if the number called is includes 
  #for the specific index number

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

puts
puts "...........End of Initial Solution Driver Code............"
puts
=end

# Refactored Solution
class BingoBoard
  def initialize(board)
    @bingo_board = board
  end
  
  def bingo_call
    @random_letter = ["B","I","N","G","O"].sample #new method
    @random_number = rand(1...100)
    p bingo_call = "#{@random_letter}#{@random_number}"
  end
  
  def check_column
    string = ["B", "I", "N", "G", "O"]
    column = string.index(@random_letter)

    @bingo_board.map! do |row|
      if row[column] == @random_number ? row[column] = "X" : row[column]
      p row
      end 
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
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
For me, this challenge was not as difficult to break down. I stuck to my psuedocode for the initial 
solution, however, I needed to return to it after I solved the problem to make it more generalized. 
Right now, my pseudocoding style works for me, but I want to continue improving it to make sure other 
people can understand my thought process and how I broke the problem down. I think my psuedocode gets 
technical sometimes because I tend to immediately approach problems with potential ways I think I can 
solve it. My thought process obviously starts with types of input for a certain output, I just need to 
start translating this better in my pseudocode.


What are the benefits of using a class for this challenge?
Every new instance/game of bingo can use the instance methods we defined. We don't have to do extra work 
to define every new game.

How can you access coordinates in a nested array?
Arrays have a numbered index system starting from 0 that counts up by one until it reaches the last
index. You can access coordinates in a nested array by using the [] method. For the example below, you 
can retrieve number 71 by calling numbers[1][0]. 

                              numbers = [[47, 44], [71, 8] [88, 81]]

This looks at the index 1 of the whole array with is inner array [71, 8]. It then calls the 0 index of 
this array which is 71.


What methods did you use to access and modify the array?
I used the index, map!, and [] methods. The index method was used on an array of strings ["B", "I", "N", "G", "0"] 
to determine what index needed to be checked in every array for a certain number. I used the destructive 
map! method to iterate because I wanted the board to be stay modified. The code block I used with the map! 
method looked at each inner array and compared the index value (based on the letter called) for the number 
called. If there was a match (true stament), it was replaced with "X", otherwise, it stayed the same. [] 
was used to call and replace elements at a specific index location.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the 
docs, what purpose does it serve, and how is it called?
Sample is an array method that really helped me clean up my code. It returns a random element in an array. 
I originally split the string "bingo" into an array, shuffled it, and returned the first index. Both 
methods work, but sample streamlined the process. The index method was also new and very helpful! In my 
initial solution, I assigned index/"column" values based on BINGO by using if/else statments. By using the 
index method on an array named ["B", "I", "N", "G", "0"], I acheived the results in a much more simplified 
way.

How did you determine what should be an instance variable versus a local variable?
I created instance variables if I need to use the value again in another instance method defined in the class. I used local variables if they only needed to be used within one method.

What do you feel is most improved in your refactored solution?
I removed separate methods to call a number and letter and combined it into 1 method called bingo_call. 
The index method helped remove lots of if/else statments I had!
  
For the first solution I included a method that would check the column, replace the number with an X, 
and then display the column. I then created a new method that would print out the modified board. This 
is because the originally outline draft called for these things. I omitted these steps in the modified 
solution because iterating with map! on the entire board didn't require me to create a new column_array. The result is much cleaner and still works.

=end




