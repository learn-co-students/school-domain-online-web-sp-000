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
    grade.to_s
    
    if !@roster[grade]
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name  
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    i = 1 
    
    while i < 10
      if @roster.key?(i)
        @roster[i] = @roster[i].sort
      end
      
      i += 1
    end
    @roster
  end
  
end