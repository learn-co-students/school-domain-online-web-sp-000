# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= [ ]
    roster[grade] << name
  end

  def grade(num)
    roster[num]
  end

  def sort
    roster.each { |grade, students| roster[grade] = students.sort }
    roster
  end
end
