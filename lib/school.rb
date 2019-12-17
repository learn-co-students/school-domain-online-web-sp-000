require "pry"
class School
  attr_accessor :roster, :student_name, :school_name, :grade, :sort 
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
   
    if @roster[grade] 
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  def grade(grade)
    @grade = grade
   @roster[grade]
    
  end
  def sort
    @roster.each do |key, value|
      value.sort!
    end
    @roster
    end

 
  def student_name(grade) 
  grade.each do |students|
    if students == 10
return student_name
end
  end
end
end














