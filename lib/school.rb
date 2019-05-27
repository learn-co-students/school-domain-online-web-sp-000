class School
  
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    # if !roster.keys.include?(grade)
      roster[grade] ||= []
    # end
    roster[grade] << name
  end
  
  def grade(grd)
    return roster[grd]
  end
  
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    return sorted
  end
end