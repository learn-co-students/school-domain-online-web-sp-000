require 'pry'

class School
  attr_accessor :school, :roster, :grade
  
  def initialize(school_name)
    @school_name = school_name
    @roster = { }
  end
  
  def add_student(name, grade)
    @roster[grade] ||= [ ]
    @roster[grade] << name
    @roster
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort 
    @roster.values.each{|list| list.sort!}
    @roster.sort_by{|grade, name| grade}.to_h
  end 
end 