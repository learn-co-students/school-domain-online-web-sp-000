class School 
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  attr_accessor :name, :roster 

  def add_student(name, grade)
    if roster[grade] == nil 
      roster[grade] = [name]
    else 
      roster[grade] = roster[grade].push(name)
    end 
  end 
  
  def grade(grade)
    roster[grade]
  end 
  
  def sort
    sorted_roster = {}
    roster.map { |grade, names| sorted_roster[grade] = names.sort}
    sorted_roster
  end 
  
end 