# code here!
class School
  #attr_reader :name
  
  def initialize(name)
    @name = name
    @student_roster = {}
  end
  
  def roster
    @student_roster
  end
  
  def add_student(name, grade)
    @student_roster.key?(grade) ? @student_roster[grade] << name : @student_roster[grade] = [name]
  end
  
  def grade(grade_level)
    @student_roster[grade_level]
  end
  
  def sort
    @student_roster.collect {|key, value| @student_roster[key] = value.sort}
    @student_roster
  end
  
end