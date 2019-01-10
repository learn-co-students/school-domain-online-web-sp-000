require 'pry'
class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end
  
  def grade(grade_number)
    @roster[grade_number]
  end
  
  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end
  
end