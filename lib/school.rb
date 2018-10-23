# code here!

class School 
  attr_accessor :roster
  attr_reader :name 
  
  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new
  end 
  
  def add_student(name, grade)
    @student_name = name
    @grade = grade
      if @roster.include?(grade) == false
        @roster[grade] = []
      end
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort
    @roster.each do |grade, array| 
      @roster[grade] = array.sort 
    end 
    
    @roster
  end 

end 