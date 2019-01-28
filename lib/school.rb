class School 
  attr_reader :name, :roster, :student_name, :grade_level
  
  
  
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

def grade(grade_level)
      @roster[grade_level]
      end
      
def sort 
  @roster.each{|k, v| v.sort!}

end

end