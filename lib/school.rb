# code here!

class School
  
  attr_accessor :roster
 
  def initialize(scool_name)
    @roster = {}
  end
  
  
   #if roster has already contains key of push the the student into the array that exist
   #if roster doesn't have key of the key create a new key and point it to empty array
   
   
  def add_student(student_name, grade)
    if @roster.include?(grade) 
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  
  def grade(grade)
    return @roster[grade]
  end
  
  def sort
    @roster.map do |grades, students| 
      @roster[grades] = students.sort
     end 
     @roster
  end
  
end 
