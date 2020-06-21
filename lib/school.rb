class School
  
  attr_accessor = :school_name
  
  ROSTER = {}
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
    @grade = []
    @grade_roster = []
  end
  
  def roster
    @roster
  end
    
  
  def roster=(name)
    @roster = name
  end
  
  def add_student
    @student
    @grade
  end
  
  def grade=(grade)
    @grade = grade
  end
  
  def grade(grade)
    @grade = grade
    if @roster[@grade].empty? == false
      @roster[@grade].each do |student|
        @grade_roster << student
      end
    end
    @grade_roster
  end
  
      
  
  
  def add_student(student, grade)
    @student = student
    @grade = grade
    if @roster.include?(@grade) == true 
      @roster[@grade] << @student
    else 
      @roster[@grade] = []
      @roster[@grade] << @student
    end
    @roster
  end
  
  
  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end

  
  
end 