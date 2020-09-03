class School 
  
attr_accessor :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student(student, grade)
    roster[grade]||roster[grade] = []
    roster[grade] << student 
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted_hash = {}
    @roster.each do |grade, student| 
      sorted_hash[grade] = student.sort 
    end
    sorted_hash
  end

end