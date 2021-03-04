# code here!
class School 
  
  def initialize(name)
    @name=name
    @roster = { }
  end
  
  def roster
    @roster
  end
  
  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end
  
  def grade(year)
    @roster[year]
  end
  
  def sort
    @roster.each do |year, student_name|
      @roster[year] = student_name.sort
    end
  end
  
end