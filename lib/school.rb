class School 
  def initialize(roster)
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
   if @roster.has_key?(grade)
     @roster[grade] << name
    else 
      @roster[grade] = [name]
    end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, student|
      student.sort!
    end
  end
end
end
