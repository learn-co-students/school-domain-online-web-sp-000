# code here!
class School


  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade_key)
      if @roster.keys.include?(grade_key)
        @roster[grade_key] << student
      else
        @roster[grade_key] = [student]
      end
  end

  def grade (grade)
    @roster[grade]
  end


  def sort
     sorted = {}
     @roster.each do |grade, students|
       sorted[grade] = students.sort
     end
     sorted
  end


end
