
class School
attr_accessor :name, :roster


  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(name, grade)
    
    if roster.has_key?(grade)
      roster[grade] << name
    else
      roster[grade] = [name]
    end
    
  end
  
  def grade(grade)
    roster[grade]
  end

  def sort 
    roster.sort do |a, b|
  if a == b
    0
  elsif a < b
    -1
  elsif a > b
    1
  end
end
  end 

end


