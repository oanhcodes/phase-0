# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin
-Define a method called in_words that accepts an integer as an argument
-Count the number of digits in the integer
 -IF number of digits is less than 10, then return single number
 -IF number of digits is between 10-99, then return a english number in tenths plus single number
=end


# Initial Solution


def in_words(integer)
single_digit = {0 => "Zero", 1 => "One", 2 => "Two", 3 => "Three", 4 => "Four", 5 => "Five", 6 => "Six", 7 => "Seven", 8 => "Eight", 9 => "Nine"}
  
teens = {0 => "Ten", 1 => "Eleven", 2 => "Twelve", 3 => "Thirteen", 4 => "Fourteen", 5 => "Fifteen", 6 => "Sixteen", 7 => "Seventeen", 8 => "Eighteen", 9 => "Nineteen"}
  
tenths= {2 => "Twenty", 3 => "Thirty", 4 => "Fourty", 5 => "Fifty", 6 => "Sixty", 7 => "Seventy", 8 => "Eighty", 9 => "Ninety"}

  
 digits = integer.to_s.split("")
 
 if digits.length < 2
  p single_digit[integer]
 else
   if digits[0] == "1"
     p teens[digits[1].to_i]
   end
 end
   
end



in_words(1)
in_words(10)
in_words(14)
# Refactored Solution






# Reflection