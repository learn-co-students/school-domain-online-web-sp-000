
require 'pry'

class School
  attr_accessor
  attr_reader :roster, :student, :grade
  attr_writer


  def initialize(roster)
    @roster = roster
    @roster = {}

  end

  def add_student (student,grade)
    if !(@roster.include?(grade))
      @roster[grade] = []
    end
    @roster[grade] << student
    @student = student
    @grade = grade
  end

  def grade (grade)
    @roster[grade]
  end

  def sort
  end



end  #end of class
