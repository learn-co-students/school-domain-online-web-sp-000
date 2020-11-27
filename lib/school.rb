# code here!

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :name, :roster

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
    roster
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, student|
      sorted[grade] = student.sort
    end
    sorted
  end

end
