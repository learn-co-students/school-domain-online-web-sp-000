# code here!

class School
  attr_accessor :roster, :name  # @ ATRIBUTE accessors


  def initialize(name) # initializes when .new called
    @name=name
    @roster={}
  end

  def add_student(student, level)
    # this sort of means #=> a || a = b ... or #=> x || x = y

    roster[level] ||= []
    roster[level] << student
  end 
  
  
  def grade(grade)    # iterates through roster hash, compares KEY and                       grade, and if its equal RETURNS associated                          VALUE
    roster.collect do |x,y|
    if x == grade
      return y
    end
  end
  end
  
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end




