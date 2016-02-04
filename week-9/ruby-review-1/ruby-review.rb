# OO Basics: Student


# I worked on this challenge with Mollie Stein.
# This challenge took me [5] hours.


# Pseudocode
=begin
Release 1:
-Define Student object 
  -Assign first name and an array of 5 random scores 
    -Scores should be assigned randomly between 0-100 to each student
-Create an array with 5 instances of Student

Release 2:
-Find average grade for each student
-Assign letter grade based off of each average
  (A for >=90%, B for >=80%, C for >= 70%, D for >= 60% and F for < 60%)

Release 3:
-Define a method for linear search
  -IF a student is in the array, return the student's position in the array
  -ELSE if the student is not in the array, return -1

=end



# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    if scores != [] 
      @scores = scores
    else
    random_scores = []
    5.times { random_scores.push(rand(0..100))}
      @scores= random_scores
    end
  end
  
  def average
    @scores.inject(0){|sum,x| sum+x} / @scores.length
  end
  
  def letter_grade
    if average >= 90 
      "A"
    elsif average < 89 && average >=80 
      "B"
    elsif average < 79 && average >=70
      "C"
    elsif average < 69 && average >=60
      "D"
    else
      "F"
    end
  end

end


Alex = Student.new("Alex", [100,100,100,0,100])
Catherine = Student.new("Catherine", [])
Mollie = Student.new("Mollie", [])
Linda = Student.new("Linda", [])
Brad = Student.new("Brad", [])

students=[Alex, Catherine, Mollie, Linda, Brad]


def linear_search(array, target_name)
  array.each_with_index do |item, index|
    if item.first_name == target_name
      return index
    else
      return-1
    end
  end
end
  
# Refactored Solution



# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

