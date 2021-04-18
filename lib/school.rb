# code here!

class School
  attr_reader :school_name, :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end 
  
  def add_student(student_name, grade_level)
    if @roster.include?(grade_level) == false 
      @roster[grade_level] = []
    end 
    @roster[grade_level] << student_name
  end 
  
  def grade(grade_level)
    @roster[grade_level]
  end 
  
  def sort
    @roster.each {|grade_level, student_name| @roster[grade_level] = student_name.sort}
  end 
end 