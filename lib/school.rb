class School
 
  
  def initialize(name)
    @name=name
    @roster={}
  end
  
  def name
    @name
  end
  
  def roster
    @roster
  end
  
  def add_student(student,grade)
    @student = student
    if @roster.include?(grade)== false
      @roster[grade]=[]
    end
      @roster[grade] << student
  
  end
  
  def grade(number)
    @roster[number]
  end
  
  def sort
    @roster.each do |grade, name|
      @roster[grade]=name.sort
    end
  end
end