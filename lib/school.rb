class School
  attr_accessor :roster
  
  def initialize(name)
    @roster = Hash.new
  end
  
  def add_student(name, grade)
    roster[grade] = []
    roster[grade] << name
  end
  
end