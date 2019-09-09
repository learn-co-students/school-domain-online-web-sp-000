class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end
  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    roster_sorted = {}
    roster.each do |grade, students|
      roster_sorted[grade] = students.sort
    end
    roster_sorted
  end
end
