# Release 5:

class NameData
  attr_reader :name
  
  def initialize
  @name = "Linda"
  end
end

class Greetings
  def initialize
   @name_data = NameData.new
  end
  
  def salutation
    puts "#{@name_data.name}, it is so nice to meet you!"
  end 
end

new_greeting = Greetings.new
new_greeting.salutation # => Linda, it is so nice to meet you! 