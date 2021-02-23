# code here!

class School 
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    @student_name = name 
    @student_grade = grade 
    
    if @roster.include?(grade) == false 
      @roster[grade] = []
    end
    @roster[grade] << name 
  end
  
  def grade(number)
    @roster[number]
  end
  
  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end