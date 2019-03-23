
require 'pry'

class School
  attr_accessor
  attr_reader :roster
  attr_writer


  def initialize(roster)
    @roster = roster
    @roster = {}

  end

  def add_student= (student,grade)
    if !(ROSTER.include?(grade))
      ROSTER[grade] = []
    end
    ROSTER[grade] << student
    @student = student
    @grade = grade
  end


end  #end of class
