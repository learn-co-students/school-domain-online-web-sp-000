class School
  attr_accessor :school_name, :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(name, grade)
    if roster.has_key?(grade)
     roster[grade] << name
    else 
      roster[grade] = []
      roster[grade] << name
    end
  end
  
  def grade(num)
    roster[num]
  end
  
  def sort
    sorted = {}
    roster.each do |grade, name|
      sorted[grade] = name.sort
    end
    sorted
  end
end