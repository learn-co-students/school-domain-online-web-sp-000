require "pry"
class School

  attr_reader :name

  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def roster()
    @roster
  end

  def add_student(student_name, grade)
    if @roster.key?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort()
    @roster.sort_by(&:first).map { |k, v| [k, v.sort]}.to_h
  end
end
