# code here!
class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end 
  
  def grade(level)
    roster.detect do |x, y|
      if x == level 
        return y 
      end
    end
  end
  
  def sort 
    new_hash = {}
    roster.each do |x, y|
      new_hash[x] = y.sort
    end
    new_hash
  end 
  
end
