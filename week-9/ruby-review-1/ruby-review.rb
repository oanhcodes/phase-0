# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin
Release 1:
-Define Student object 
  -Assign first name and an array of 5 random scores 
    -Scores should be assigned randomly between 0-100 to each student
-Create an array with 5 instances of Student


=end



# Initial Solution
students = []

class Student
  # attr_accessor :scores, :first_name

  def initialize(first_name, scores, array)   #Use named arguments!
    @first_name = first_name
    @scores = scores
    if @scores != [] 
      array.push([first_name: @first_name, scores: @scores])
    else
      random_scores =[]
        5.times { random_scores.push(rand(0..100))}
      array.push([first_name: @first_name, scores: random_scores])
    end
  end
  
end

Alex = Student.new("Alex", [100,100,100,0,100], students)
Catherine = Student.new("Catherine", [], students)
Mollie = Student.new("Mollie", [], students)
Linda = Student.new("Linda", [], students)
Brad = Student.new("Brad", [], students)

p students


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





# Reflection