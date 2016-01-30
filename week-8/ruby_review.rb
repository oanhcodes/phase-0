# Reverse Words


# I worked on this challenge by myself.
# This challenge took me [1.5] hours.

# Pseudocode
# Create a method called reverse_words that accepts a string
# Break string up into into individual words
# Reverse each word in the array
# Return the array as a joined sentenced


# Initial Solution
def reverse_words(string)
  p word_array = string.split
  reversed_sentence = [ ]
  
  word_array.each do |word|
    reversed_sentence.push(word.reverse)
  end

  p reversed_sentence.join(" ")
end

reverse_words("My name is Linda")

# Refactored Solution





# Reflection