# code here!

class School
  attr_accessor :roster
  
  def initialize(name)
    @roster = {}
    @name = name
  end
  
  def add_student(name, grade)
    @roster[grade] = [] if !@roster[grade]
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    roster_sort = {}
    @roster.each do |key, value|
      roster_sort[key] = value.sort
    end
    roster_sort
  end
  
end