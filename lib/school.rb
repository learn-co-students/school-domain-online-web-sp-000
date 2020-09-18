# code here!
require 'pry'

class School
  attr_reader :roster
  
  def initialize(name, roster = { })
    @name = name
    @roster = roster
  end
  
    
  def add_student(name, grade)
    @grade = grade
    #if the roster for a grade hasn't been created yet, we create it here
    if @roster[grade] == nil
      #initializing the array of names for the grade
      @roster[grade] = [ ]
      #adding the name to the array for that grade
      @roster[grade] << name
    #if the roster for the grade exits, then we just need to add the student's name
    elsif @roster[grade] != nil
      @roster[grade] << name
    end
  end
  
  def grade(year)
    @grade = year
    #returning the array of names for the grade typed in
    return @roster[@grade]
  end
  
  def sort
    #first sorting by keys
    @roster = @roster.sort.to_h
    @roster.collect do |grade, names|
      #now sorting the names in each grade alphabetically
      @roster[grade] =  @roster[grade].sort
    end
    #returning the sorted roster
    return @roster
  end
  
  
end