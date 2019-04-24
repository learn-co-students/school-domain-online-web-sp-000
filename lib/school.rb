# code here!
class School
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student, grade)
    if @roster[grade] != nil 
      @roster[grade] << student 
    else
      @roster[grade] = [student]
    end
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each { |grade, students| students.sort! }
  end
end