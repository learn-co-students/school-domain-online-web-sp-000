class School 
  attr_reader :name, :roster
  
  def initialize(name)
    @name= name
    @roster= {}
  end 
  
  def add_student(student_name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student_name  
    else   
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    sorted_roster = {}
    @roster.each do |grade,students|
      sorted_roster[grade] = (students.sort {|a,b| a<=>b})
    end
    sorted_roster
  end 
   
end 