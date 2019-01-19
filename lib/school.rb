# code here!
class School
  attr_accessor :name, :roster 
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      grade_array = []
      grade_array << student_name
      @roster[grade] = grade_array
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, val|
      val.sort!
    end
  end

end
