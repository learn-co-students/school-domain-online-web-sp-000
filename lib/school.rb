class School
attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student,grade)
    @roster[grade] = [] unless @roster.keys.include?(grade)
    @roster[grade] << student 
  end

  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    sorted_students = {}
    
    @roster.each do |grade, students|
      sorted_students[grade] = students.sort
    end
    sorted_students
  end
  
  
  
end

