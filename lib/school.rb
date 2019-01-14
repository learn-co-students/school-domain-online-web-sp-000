class School
  
   attr_accessor :name, :roster 
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student_name, student_grade)
    if !@roster.include?(student_grade)
      @roster[student_grade] = []
      @roster[student_grade] << student_name 
    else
      @roster[student_grade] << student_name
    end 
  end
  
def grade(grade)
  @roster[grade]
end 

=begin 

=end 

end


