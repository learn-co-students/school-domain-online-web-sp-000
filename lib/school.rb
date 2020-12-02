# code here!
class School
  
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(name, grade)
    if @roster.has_key?(grade)
      roster[grade].push(name)
    else 
      roster[grade] = []
      roster[grade].push(name)
    end 
  end
  
  def grade(grade)
    return @roster[grade]
  end
  
  def sort 
    @roster.each do |key, value|
      value.sort!
    end
  end
end