class School
  
  attr_reader :name, :roster, :grade 
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name 
    else 
      @roster[grade] = []
      @roster[grade] << name 
    end
  end
  
  def grade(grade_num)
    @roster.each do |grade, name|
      if grade_num == grade
      return name
      end
    end 
  end 
  
  def sort
    @roster.each do |grade, name|
      name.sort! 
    end 
  end
  
end 