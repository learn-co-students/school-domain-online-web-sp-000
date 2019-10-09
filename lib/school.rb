# code here!
class School
  attr_accessor :name
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    return_hash = {}
    @roster.each do |grade, student|
      return_hash[grade] = student.sort
    end
    return_hash
  end
end
