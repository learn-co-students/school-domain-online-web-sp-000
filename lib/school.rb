require 'pry'

class School 
  
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    if !@roster.include? (grade)
      @roster[grade] = []
    end
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.collect do |grade, students|
      students = students.sort
      @roster[grade] = students
    end
    @roster
  end

end