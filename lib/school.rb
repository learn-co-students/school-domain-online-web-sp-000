class School
  attr_accessor :add_student, :roster, :grade
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def grade(grade)
    return roster[grade] ? roster[grade]: []
  end

  def sort
    roster_copy = {}
    roster.each do |grade, students|
      roster_copy[grade]= students.sort
    end
    return roster_copy
  end

  def add_student(student, grade)
    if roster[grade] == nil
      roster[grade]= []
    end
    roster[grade] << student
  end
end
