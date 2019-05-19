# code here!

class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(name, grade)
    if !roster.keys.include?(grade)
      @roster[grade] = []
      @roster[grade] << name
    else 
      @roster[grade] << name
    end
  end
  
  def grade(grade)
    return @roster[grade]
  end
  
  def sort 
    sorted = {}
    @roster.map do |grade, students|
      sorted[grade] = students.sort  
    end 
    sorted
  end 
end 