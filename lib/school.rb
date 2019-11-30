class School
  attr_accessor :roster
  
  def initialize(school)
    @school = school 
    @roster = {} 
  end 
  
  def add_student(student, grade)
    @roster[grade] ||= [] 
    @roster[grade] << student 
  end
  
  def grade(grade) 
    @roster[grade]
  end
  
  def sort 
    @roster.each do |grade, student| 
      student.sort! 
    end
  end 
  
end 