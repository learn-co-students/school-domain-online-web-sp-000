
class School
  
  attr_accessor :roster
  attr_reader :school
  
  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
    
    def grade(grade)
      @roster[grade]
    end
    
    def sort 
      new_roster = {}
      @roster.each do |grade, student|
        new_roster[grade] = student.sort
      end
      new_roster
    end
    
  end