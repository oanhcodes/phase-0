# Reverse Words


# I worked on this challenge by myself.
# This challenge took me [1] hours.

# Pseudocode
# Create a method called reverse_words that accepts a string
# Break string up into into individual words
# Reverse each word in the array
# Return the array as a joined sentenced


# Initial Solution
def reverse_words(string)
  word_array = string.split
  reversed_sentence = [ ]
  
  word_array.each do |word|
    reversed_sentence.push(word.reverse)
  end

  p reversed_sentence.join(" ")
end

reverse_words("My name is Linda")

# Refactored Solution

def reverse_words(string)
  word_array = string.split
  reversed_sentence = [ ]
  
  word_array.each {|word| reversed_sentence.push(word.reverse)}

  p reversed_sentence.join(" ")
end

# Reflection
#What concepts did you review or learn in this challenge?
#In this challenge, I reviewed built in string and array methods. I also 
#reviewed how to iterate over an array using each.

#What is still confusing to you about Ruby?
#I am still figuring out how to refactor my initial solutions better. The #differences between variable scopes and when instance and class variables can 
#be accessed.

#What are you going to study to get more prepared for Phase 1?
#I am currently working on developing cheatsheets to review Ruby. I want to 
#focus on studying more about enumerables, classes, and iterating on nested 
#collections.
