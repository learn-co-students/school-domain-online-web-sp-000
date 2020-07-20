class School

attr_accessor :roster, :school

ROSTER = {}

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if roster.include?(grade)
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_students = {}
    roster.each do |grade, student|
      sorted_students[grade] = student.sort
    end
    sorted_students
  end

end
