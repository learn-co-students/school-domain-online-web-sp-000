# code here!

class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade] << student
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    @roster.values.collect! do |students|
      students.sort!
    end
    @roster
  end
  
end