# code here!

class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(name, grade)
    if @roster[grade] != nil
      @roster[grade] << name
    else 
      @roster[grade] = [name]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.each do |key, value|
      value.sort!
    end
  end 
  
end
