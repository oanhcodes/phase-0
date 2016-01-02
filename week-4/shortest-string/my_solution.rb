# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Psuedocode
#Define method called shortest string that accepts one argument
	#The argument will accept an array of strings
#Create an if statement that returns nil if the array is empty
#Find string length for each value of the array
	#Create a hash with key/value {string => string length}
	#Sort hash by smallest string length value and return array
    #Call first index value of array to get shortest integer

#Your Solution Below
def shortest_string(list_of_words)
  if list_of_words == []
  	return nil
  else
  	word_hash = Hash.new
  	list_of_words.each do |string|
  		number = string.length
  		h = {string => number}
  		word_hash.update(h)
  	end
  end   

array = word_hash.sort_by {|x,y| y}
p array.flatten[0]
end

shortest_string(["apple", "to", "frog", "martian", "a"])