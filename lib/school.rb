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

  def grade(student_grade)
    roster[student_grade]
  end

  def sort  
    sorted = {} 
    roster.each do |grade, students| #iterate through each grade and student
      sorted[grade] = students.sort
    end
    sorted 
  end
end