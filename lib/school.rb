require 'pry'
class School
 attr_accessor :name, :roster
  
  def initialize(name)
    
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
   roster[grade] ||= []
   roster[grade] << student_name
   
  end
  
  def grade(s_grade)
    roster[s_grade]
  
  end
  
  def sort
  sorted = {}
  roster.each do |key, value|
    sorted[key] = value.sort
    end
  sorted
  end
  
end