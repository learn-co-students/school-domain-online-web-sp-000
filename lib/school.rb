class School
  
  attr_accessor :student, :grade
  
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def roster
    @roster
  end
  
  def add_student(name, grade)
    @student_name = name
    @grade = grade
    if @roster.include?(grade) == false 
      @roster[grade] = []
    end
      @roster[grade] << name 
  end 
  
  def grade(grade_year)
    @roster[grade_year]
  end
  
  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end