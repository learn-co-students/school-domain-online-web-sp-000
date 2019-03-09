class School
  attr_accessor :roster
  
  def initialize(roster)
    @roster = {}
  end
  
  def add_student(student, grade)
    roster[grade] = [] if !roster[grade]
    roster[grade] << student
  end

  def grade(grade_number)
    roster[grade_number]
  end

  def sort
    sorted_roster = {}
    roster.each do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end
end