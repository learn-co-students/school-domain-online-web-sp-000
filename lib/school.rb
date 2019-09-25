# code here!
class School

  attr_accessor :school, :student, :roster
  
  
  def initialize(school)
    @school = school
    @@roster = Hash.new
  end
  
  def roster
    @@roster
  end
  
   def add_student(student, grade)
    if @@roster.has_key?(grade) == false
      @@roster[grade] = []
      @@roster[grade] << student
    else
      @@roster[grade] << student
    end
    
  end
  
  def grade(grade)
    a = @@roster.fetch_values(grade)
    a.flatten
    b = a.flatten
    b
  end
  
  def sort
   @@roster.each do |key, array|
     array.sort!
   end
   end
end