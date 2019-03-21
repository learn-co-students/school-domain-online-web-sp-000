# code here!
class School
  attr_accessor :school_name
  attr_reader :roster
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] = [] if !@roster.include?(grade)
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.collect do |grade, students|
      [grade, students.sort]
    end.to_h
  end
end