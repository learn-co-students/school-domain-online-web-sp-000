require "pry"

class School 
  attr_reader :name :roster
  
  def initialize(name)
    @name= name
    
    
    @roster= {}
  
  
 
  end 
  
  def add_student(student_name, grade)
    roster[student_name] = grade
  end 
  
end 


school=School.new("New")
binding.pry