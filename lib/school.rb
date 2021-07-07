require "pry"

class School 
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  attr_accessor :name, :roster
  
  def add_student(name, grade)
    
      if @roster.include?(grade)
        @roster[grade] << name
      else
        @roster[grade] = []
        @roster[grade] << name
      
    end
  end 
  
  def grade(grade)
    return @roster[grade]
  end 
   
  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end