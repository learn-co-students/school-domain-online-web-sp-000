# code here!
require 'pry'

class School
  def initialize(school) 
    @school = school 
    @roster = {} 
  end 
  
  def roster
    @roster
  end 
  
  def add_student(name, grade)
   if  @roster[grade] || @roster[grade] = []  
     @roster[grade] << name
   end 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    sorted_hash = {}
    @roster.each {|k, v| sorted_hash[k] = v.sort}
    sorted_hash
  end 
end 

