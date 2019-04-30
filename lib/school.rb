class School
 
attr_accessor :roster 
attr_reader :student, :grade

def initialize(roster)
  @roster = {}
 end

def add_student(student, grade)
  roster[grade] ||= []
  roster[grade] << student
 end

def grade(grade)
  roster[grade]
 end

def sort
  roster.each do |grade, students|
    students.sort!
  end
 end
end
  
