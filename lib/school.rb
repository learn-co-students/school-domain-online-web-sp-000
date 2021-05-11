class School
  attr_reader :school, :roster
  
  def initialize(school)
    @school = school
    @roster = {}
  end
 
  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end