# code here!


class School

  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    # @roster[grade] ||= []    or equals operator is ||= it does if/else in one line
    # @roster[grade] << student_name

    # @roster[grade] checks to see if that exists

    if !@roster[grade]
      @roster[grade] = []
      @roster[grade] << student_name
    else
      @roster[grade] << student_name
    end

  end

  def grade(student_name)
    @roster[student_name]
  end

  def sort
    sorted = {}
    @roster.each do |grade, student|
      sorted[grade] = student.sort
    end
    sorted
  end
end
