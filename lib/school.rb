class School
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !roster[grade]
      roster[grade] = [name]
    else
      roster[grade] << name
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    temp = {}
    @roster.each_pair do |grade, students|
      temp[grade] = students.sort
    end
    temp
  end
end
