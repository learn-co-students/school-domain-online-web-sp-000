class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(grade)
    roster.find do |a, b|
      if grade == a 
       return b 
      end
    end
  end
  
  def sort
    new_hash = {}
    roster.each do |a, b|
      new_hash[a] = b.sort
    end
    new_hash
  end
end


