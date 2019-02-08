
require 'pry'

class School
  attr_reader :school_name, :roster


  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name,grade)
    self.roster[grade] ||= []
    self.roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
  @roster.each do |grade, student_name|
    student_name.sort!
  end
end

end
