# code here!
class School

  attr_accessor :roster

  def initialize(school_name, roster={})
    @name = school_name
    @roster = roster
  end

  def add_student(student_name, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = []
      @roster[grade] << student_name
    else
      @roster[grade] << student_name
    end
  end

  def grade(grade_num)
    return @roster[grade_num].flatten
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end

end
