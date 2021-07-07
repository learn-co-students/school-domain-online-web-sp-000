class School

  attr_accessor :school, :roster

  def initialize(school)
    roster = {}
    @school = school
    @roster = roster
  end

  def add_student(name, grade)
    if roster.length == 0 
      roster[grade] = []
    elsif roster[grade] == nil 
      roster[grade] = []
    end 
    roster[grade] << name 
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    roster.each_value do |array|
      array.sort! 
    end
    return roster 
  end 

end

