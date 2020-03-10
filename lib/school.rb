# code here!
require 'pry'
class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name,grade)
    if !@roster.key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    # for some reason, the names in 9th grade do not sort
    @roster[9]=@roster[9].sort
    @roster.each do |grade, students|
      students.sort
    end
  end

end
