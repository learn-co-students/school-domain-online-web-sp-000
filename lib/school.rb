# code here!
class School
  attr_reader :name, :roster
  def initialize(school_name)
      @name = school_name
      @roster = {}
  end    
  
  def add_student (name, grade)
    self.roster[grade] = [] unless self.roster.keys.include? (grade) 
    self.roster[grade] << name
  end  
  
  def grade(num)
    self.roster.keys.collect do |grade|
      self.roster[grade] if num == grade
    end.flatten.compact 
  end
  
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end