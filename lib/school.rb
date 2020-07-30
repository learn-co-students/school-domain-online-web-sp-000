# The School class is a "model" in the domain model context
class School
  attr_reader :school_name, :roster 

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  # The key is the grade. The value is the student_name
  def add_student(student_name, grade)
    if roster[grade] == nil
      roster[grade] = [student_name]
    else
      roster[grade] << student_name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = roster.each {|grade, student| student.sort!}
    sorted.to_h
  end
end