class School

  attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if roster.keys.include?(grade)
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
    roster.each do |grade, students|
      students.sort!
    end 
  end

end
