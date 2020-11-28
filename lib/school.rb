# code here!
require 'pry'

class School
  attr_accessor :roster, :name
  
  def initialize(name)
    @name = name
    @roster = Hash.new {|roster, grade| roster[grade] = []}
  end
  
  def add_student(student_name, grade)
    roster[grade] += [student_name]
  end
  
  def grade(grade)
    roster[grade]
  end

  def sort
    roster.keys.each do |i|
      roster[i] = roster[i].sort
    end
   roster
  end
end