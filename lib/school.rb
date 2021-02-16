 class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @grade = grade
    @roster[grade]
  end
  
  def sort 
    @roster.each do |grade, student_name|
      @roster[grade] = student_name.sort
    end
  end
end
