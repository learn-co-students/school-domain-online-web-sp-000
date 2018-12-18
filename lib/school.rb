# code here!
class School
  
  attr_accessor :student, :grade, :roster 
  attr_reader :name
  
  def initialize(name)
    @name = name
    self.roster = {}
    end 
  
  
  
  def add_student(student, grade)
     
    if roster.key?(grade) == true
      roster[grade] = roster[grade] + [student]
    else 
      roster[grade] = []
    roster[grade] << student 
     end 
    end 
    
  def grade(grade)
    return roster[grade]
  end 
  
  def sort
    
    roster.each_value { |v| v.sort! }
    
    
  end 
    
    
  
  
  
end 
