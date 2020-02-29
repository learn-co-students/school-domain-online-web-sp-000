# code here!
class School
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    @roster = { }
  end
  
  def roster
    @roster
  end
  
  def add_student(student_name, grade)
    @roster[grade] = [ ] if !(@roster.include?(grade))
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    new_array = []
    @roster.each do |grade, student_name|
      new_array = student_name.sort
      @roster[grade] = new_array
    end
  end
end