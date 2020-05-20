# code here!

class School 
  
  attr_accessor :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  def add_student(name, grade) 
    if @roster[grade] == nil 
      @roster[grade] = [name] 
      @roster
    elsif @roster[grade] != nil 
    @roster[grade] << name
    @roster
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.map do |k, v| v.sort!
  end
  @roster
end
    
end