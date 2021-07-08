class School
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def roster(roster)
    @roster = roster
  end 
  
  def roster
    @roster
  end 
  
  def add_student(student, grade)
    @student = student 
    @grade = grade 
    
    #if no key exists for the grade, create empty array of values 
    if !@roster.include?(grade) 
      @roster[grade] = []
    end 
      @roster[grade] << student 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    sorted_roster = {}
    #sort array of student names
    @roster.each {|grade, student| sorted_roster[grade] = student.sort}
    sorted_roster.each {|grade, student| grade}
  end 
end 
