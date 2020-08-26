class School
  
  attr_accessor :roster
  attr_reader :school_name
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    @roster[grade] = [] if !@roster.keys.include?(grade)
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted_roster = @roster
    sorted_roster.each_value {|array| array.sort!}
    sorted_roster
  end
end