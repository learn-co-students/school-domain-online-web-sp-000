class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(students_grade)
    @roster[students_grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end



end
