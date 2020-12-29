class School 
  
  def initialize(name)
    @name= name
    @roster= {}
  end 
  
  def name 
    @name= name 
  end 
  
  def name 
    @name
  end 
  
   def roster 
    @roster
  end
  
  def add_student(student_name, grade)
    if roster[grade]
      @roster[grade] << student_name
    else 
      @roster[grade] = [student_name]
   end
 end 

  def grade 
    
  end 
  
  def sort 
    
  end 
  
end 
  
    