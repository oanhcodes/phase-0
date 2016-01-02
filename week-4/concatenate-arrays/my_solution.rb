# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below
#Psuedocode
#Define a method called array_concat that requires two arguments
#Create if statement that returns an empty array if both arguments are empty arrays
#Use concat to combine two arrays

def array_concat(array_1, array_2)
  if array_1 == [] || array_2 == []
  	return [] 
  else
  	return array_1.concat(array_2)
  end
end

array_concat(["monkey", 3, 18, "spice"], [4, 5, "spicy"])