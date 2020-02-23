require 'pry'

class School
  def initialize(name)
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    final_hash = {}
    roster.each do |grade, student| 
      final_hash[grade] = student.sort
    end
    final_hash
  end
  
end