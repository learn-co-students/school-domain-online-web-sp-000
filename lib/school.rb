# code here!
require "pry"
class School
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @student_name = name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(number)
    @roster[number]
  end

  # def sort
  #   sorted = {}
  #   @roster.each do |grade, name|
  #     sorted[grade] = name.sort
  #   end
  #   sorted
  #   binding.pry
  # end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
