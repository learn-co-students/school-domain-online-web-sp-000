require 'pry'

class School
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade_level)
    if roster.has_key?(grade_level)
      roster[grade_level] << student_name
    else
      roster[grade_level] = []
      roster[grade_level] << student_name
    end
  end

  def grade(grade_level)
    roster[grade_level]
  end

  def sort
    @roster.each { |key, value| value.sort! }
  end
end