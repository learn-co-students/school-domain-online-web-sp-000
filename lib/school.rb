class School
  attr_accessor :school, :roster, :grade, :name
  
  
  def initialize(roster)
    @roster = Hash.new {|h,k| h[k] = []}
  end 
  
  
 def add_student(name, grade)
   @name = name
   @grade = grade 
   roster[grade] << name 
  end 
   
  def grade(grade)
    @roster[grade]
  end 

  def sort 
   @roster.each do |grade, name|
      @roster[grade] = name.sort
    end 
  end 
  
end 

