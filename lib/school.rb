class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !roster.key?(grade)
      roster[grade] = []
      roster[grade] << name
    else
      roster[grade] << name
    end
  end
    
  def grade(grade)
    roster[grade]
  end
    
  def sort
    roster.each do |gr_ade, names|
      roster[gr_ade] = names.sort
    end
    roster
  end
  
end