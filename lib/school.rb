# code here!
require 'pry'

class School
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def roster 
   @roster
  end 
  
  def add_student(name, grade)
    if @roster.has_key?(grade) == true 
      @roster[grade] << name 
    else 
      @roster[grade] = []
      @roster[grade] << name 
    end
  end
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort
    new_roster = {}
    new_roster = @roster.each do |grade, name| 
      name.sort
    end 
    binding.pry
    return @new_roster
  end 
end