# code here!
class School
  attr_reader :roster
  def initialize(roster)
    @roster = {}
  end
  def add_student(name, grade)
    if(@roster.has_key?(grade))
      @roster[grade] << name
    else 
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade(num)
    @roster.filter do |grade, students_array|
    if(grade == num)
      return students_array
    end
  end
  end
  
  def sort
    @roster.filter do |grade, students_array|
      students_array.sort!
    end
  end
end