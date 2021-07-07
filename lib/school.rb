require 'pry'
class School
  
  attr_accessor :roster
  
  def initialize(school_name)
    @name = school_name 
    @roster = {}
    
  end 
   
  def add_student(name, grade)
    if @roster[grade] == nil 
    @roster[grade] = []
    @roster[grade] << name
    else
      @roster[grade] << name 
    end 
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