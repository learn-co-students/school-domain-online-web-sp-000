class School
  attr_accessor :name, :roster
  
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    @roster[grade] = [] unless @roster[grade]
    @roster[grade] << student_name 
  end
  
  def grade(grade)
      @roster[grade]
  end
  
  def sort
    sorted = {}
    @roster.each do |key, value|
      sorted[key] = value.sort
    end
    sorted
  end
  
end