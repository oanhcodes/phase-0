# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
#Psuedocode
#Define method called longest string that accepts one argument
	#The argument will accept an array of strings
#Create an if statement that returns nil if the array is empty
#Find string length for each value of the array
	#Create a hash with key/value {string => string length}
	#Sort hash by smallest string length value and return array
	#Flatten and reverse array
    #Call first index value of array to get shortest integer

#Your Solution Below
def longest_string(list_of_words)
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
p array.reverse.flatten[0]
end

longest_string(["monkey", "dog", "cookie", "farewell"])