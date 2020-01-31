# code here!
class School 
  attr_reader :name 
  
  def initialize(name)
    @name = name 
    @roster = {} 
  end 
  
  def roster 
    @roster
  end 
  
  def add_student(name, grade)
    roster[grade] ||= [] 
    roster[grade] << name 
  end 
  
  def grade(num)
    roster[num]
  end 
  def sort 
    roster.map do |level, students|
      roster[level] = students.sort 
    end 
    roster 
  end 
end 