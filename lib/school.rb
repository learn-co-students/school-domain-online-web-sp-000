# code here!
class School
  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if roster[grade] == nil
      roster[grade] = []
    end
    roster[grade] << student
  end

  def grade(grade_num)
    roster[grade_num]
  end

  def sort
    roster.each do |grade, students|
      students.sort!
    end
  end
end
