class School
  attr_accessor :roster, :student_name, :student_grade
  roster = {}

  def initialize(roster)
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if roster[student_grade] == nil
      roster[student_grade] = []
    end
    roster[student_grade] << "#{student_name}"
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    roster.map { |grade, names| roster[grade] = names.sort }
    roster
  end


end
