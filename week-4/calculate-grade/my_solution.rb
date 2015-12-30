# Calculate a Grade

# I worked on this challenge with Cody Kendall

# Your Solution Below

def get_grade(average)
	if average >= 90 
	  p "A"
	elsif average >= 80 && average <= 89
	  p "B"
	elsif average>= 70 && average <= 79
	  p "C"
	elsif average >= 60 && average <= 69
	  p "D"
	else
	  p "F"
	end
end
