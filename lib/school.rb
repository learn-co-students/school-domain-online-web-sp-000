# code here!
require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(student_name, grade)
    roster[grade] || roster[grade] = []
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end

school = School.new("Bayside High School")

school.add_student("Zach Morris", 9)

school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)

school.grade(9)

