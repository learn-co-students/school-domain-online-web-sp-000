require 'pry'

class School

  GRADES = []

  def initialize(school)
    @school = school
    @roster = {}
  end


  def roster
    @roster
  end


  def add_student(student_name, grade_number)

    if GRADES.include?(grade_number) == false
      GRADES << grade_number
    end

    if @roster[grade_number]
      @roster[grade_number] << student_name
    else
      @roster[grade_number] = []
      @roster[grade_number] << student_name
    end
  end


  def grade(grade_number)
    @roster[grade_number]
  end


  def sort

    sorted_names = {}
    GRADES.each do |grade, students|
      sorted_names[grade] = @roster[grade].sort
    end
    sorted_names
  end
end
