class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {} #key is grade, value is array of students
  end

  def add_student(student, grade)
    unless @roster.key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(level)
    @roster[level]
  end

  def sort
    @roster.each do |grade, student|
      @roster[grade] = student.sort
    end
  end

end
