# code here!
 
  class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] = [] unless roster[grade]
    roster[grade] << name
  end
  
  def grade(num)
    roster[num]
  end
  
  def sort
    sorted = {}
    roster.each do |key, values|
      sorted[key] = values.sort
    end
    sorted
  end
end
