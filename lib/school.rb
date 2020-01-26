# code here!
#school class
class School
  attr_accessor :grade
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name,grade)
    if roster[grade]
      roster[grade] << name
    else
      roster[grade] = [name]
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, name|
      sorted[grade]=name.sort 
    end
    sorted
  end
end #end of school class
