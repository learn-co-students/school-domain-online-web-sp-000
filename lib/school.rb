require "pry"

class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  attr_accessor :name, :roster
  
  def add_student(student, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student
    else
      @roster[grade]=[]
    @roster[grade] << student
  end
end

def grade(grade)
  return @roster[grade]
end

def sort
  new_hash = {}
  @roster.each do |grade, students|
     new_hash[grade]=students.sort
  end
  new_hash
end

    
  
  
end