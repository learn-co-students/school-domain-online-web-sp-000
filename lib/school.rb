class School

attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  
  def add_student(student, grade_level)
    if @roster[grade_level]
      @roster[grade_level] << student
    else
     @roster[grade_level] = []
     @roster[grade_level] << student
    end
  end
  
  def grade(grade_level)
    roster.each do |x, y| 
      if x == grade_level
        return y 
      end 
    end 
  end
  
  def sort
    new_roster = {}
      roster.each do |x, y|
        roster[x] = y.sort
    end
  end
end
