class School
  def initialize(name)
    @name = name
  end
  
  def name
    @name
  end
  
  def initialize(roster)
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student_name, student_grade)
    @roster[student_grade] ||= []
    @roster[student_grade] << student_name
  end
  
  def grade(student_grade)
    @roster[student_grade]
  end
  
  def sort
    hash = {}
    roster.each do |grade, name|
      hash[grade] = name.sort
    end
    hash
  end
end