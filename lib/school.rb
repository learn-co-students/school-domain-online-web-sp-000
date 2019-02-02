require "pry"

class School

attr_accessor :school_name

  def initialize(school_name)
    @school_name = school_name
     @school_roster = {}
  end

  def roster
    @school_roster
  end
  
  def add_student(student_name, grade)
    
    if @school_roster.keys.include?(grade)
      @school_roster[grade] << student_name
    else
      @school_roster[grade] = [student_name]
    end
  end
  
  def grade(grade)
    @school_roster[grade]
  end
  
  def sort
    @school_roster.each do |grade, names|
      names.sort!
    end
  end
  

end