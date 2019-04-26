# code here!

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(name, grade)
    roster[grade] = [] unless roster[grade]
    roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

def sort
  @roster.each do |grade,name|
    @roster[grade] = name.sort
  end
end
  
