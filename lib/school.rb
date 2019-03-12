require "pry"
class School

  attr_reader :name, :roster, :student_name, :grade

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    @student_name = name
    @grade = grade
    if !@roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each {|k,v| v.sort!}
  end
end
