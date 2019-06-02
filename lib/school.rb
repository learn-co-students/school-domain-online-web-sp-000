class School
  attr_writer :grade
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    if @roster[grade] == nil
      @roster[grade] = [student_name]
    else
      @roster[grade] << student_name
    end
  end
  
  def grade(number)
    @roster[number]
  end
  
  def sort 
    @roster.each do |grade, student_arr|
      student_arr.sort!
    end
  end
end 