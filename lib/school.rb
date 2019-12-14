class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
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
    @roster.select do |student_grade, student_name|
      if student_grade == grade
        return student_name
      end
    end
  end
  
  def sort
    sorted_hash = {}
    @roster.each do |grade, student|
      sorted_hash[grade] = student.sort
    end
    sorted_hash
  end
  
end