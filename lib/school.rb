class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if roster.include?(grade) == false
      @roster[grade] = []
    end
      @roster[grade] << student
    end

  def grade(level)
    @roster[level]
  end

  def sort
    sorted_students = {}
    @roster.each do |grade, student|
      sorted_students[grade] = student.sort
    end
    return sorted_students
  end
end