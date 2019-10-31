class School
  attr_accessor :name, :roster 
  
  def intialize(name)
    @name = name
    @roster = {}
  end   
  
  def add_student=(student_name, grade)
    @student_name = student_name
    @grade = grade
  end   
end   