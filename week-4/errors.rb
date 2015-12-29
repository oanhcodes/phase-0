# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1.5] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The file name is errors.rb
# 2. What is the line number where the error occurs?
# The error occurs is listed on line 170.
# 3. What is the type of error message?
# It is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# There is an unexpected end of input rather than the expexted keyword_end.
# 5. Where is the error in the code?
# The error is located in the
# 6. Why did the interpreter give you this error?
# The syntax was invalid because there needs to be another end to close while statement. I added the missing end to fix the code.

# --- error -------------------------------------------------------

south_park = " "

# 1. What is the line number where the error occurs?
# The error occurs on line 35.
# 2. What is the type of error message?
# It is a name error.
# 3. What additional information does the interpreter provide about this type of error?
# This is an undefined local variable or method error.
# 4. Where is the error in the code?
# The error is on the object 'south_park'. 
# 5. Why did the interpreter give you this error?
# The variable south_park was not made equal to a value such as a string, integer, or float. I added a string value to fix the code.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# The error occurs on line 50
# 2. What is the type of error message?
# This is a no method error.
# 3. What additional information does the interpreter provide about this type of error?
# This is an undefined method error.
# 4. Where is the error in the code?
# The error is on the method cartman(). 
# 5. Why did the interpreter give you this error?
# The method cartman was not defined and did not have an end. I added def before the method and end after to fix the code.

# --- error -------------------------------------------------------

def cartmans_phrase(statement)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# The error is on line 66 and line 70.
# 2. What is the type of error message?
# This is an argument error. 
# 3. What additional information does the interpreter provide about this type of error?
# There are the wrong number of arguments (1 for 0).
# 4. Where is the error in the code?
# The error is next to the method on line 66.
# 5. Why did the interpreter give you this error?
# There were no arguments in the method, however, one was used when it was being called. I added an argument to the method cartmans_phrase to fix the code.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("You look like Donald Trump!")

# 1. What is the line number where the error occurs?
# The error occurs on line 85 and 89.
# 2. What is the type of error message?
# This is an argument error. 
# 3. What additional information does the interpreter provide about this type of error?
# There are the wrong number of arguments (0 for 1). 
# 4. Where is the error in the code?
# The error in on the method cartman_says on line 89.
# 5. Why did the interpreter give you this error?
# There is one argument in the method, however, an argument is used when it is being called. I added an argument to fix the code.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming','Fred')

# 1. What is the line number where the error occurs?
# The error occurs in line 106 & 110.
# 2. What is the type of error message?
# This is an argument error. There are the wrong number of arguments (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
# There are the wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# The error is in line 110 in the method cartmans_lie.
# 5. Why did the interpreter give you this error?
# Two arguments are listed in the defined method and only one was used when it was called on line 110. I fixed it by adding a second argument.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# The error occurs in line 125.
# 2. What is the type of error message?
# It is a type error.
# 3. What additional information does the interpreter provide about this type of error?
# A String can't be coerced into a Fixnum
# 4. Where is the error in the code?
# The error is in the "*".
# 5. Why did the interpreter give you this error?
# The string and integer need to be reversed in this line of code because 5 cannot be multiplied by a string. However, a string can be multiplied 5 times.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# The error occurs on line 140.
# 2. What is the type of error message?
# The error message is a Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# Something is dividing by zero
# 4. Where is the error in the code?
# In the "/".
# 5. Why did the interpreter give you this error?
# Items divided by zero always end in zero. This creates and error.

# --- error -------------------------------------------------------

require_relative = "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# The error occurs on line 156.
# 2. What is the type of error message?
# The error message is a Load Error.
# 3. What additional information does the interpreter provide about this type of error?
# The file is unable to be loaded.
# 4. Where is the error in the code?
# The error is located in the variable named require_relative.
# 5. Why did the interpreter give you this error?
# The equals sign was missing between the variable and the string.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#The first error is the most difficult to read because the error kept pointing the the last line of the file. 

#How did you figure out what the issue with the error was?
#I first used the trial and error technique to identify that the error stemmed from the while statement. After reading more of Chris Pine's book, I remembered that while loops must have an end statement.

#Were you able to determine why each error message happened based on the code? 
#Yes, I was able to determine why each error message occured.

#When you encounter errors in your future code, what process will you follow to help you debug?
#I will look at the for where the error occured, figure out what type of error it is, and read all the additional information than can help me understand what I might need to change to fix the code. I will text the code with each change so I can see what works and what doesn't work.