class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    if @roster[grade]
    @roster[grade]
    end
  end

  def sort
    sorted_students = []
    @roster.each do | grade, students|
      sorted_students = students.sort
    end
    @roster
  end
end
