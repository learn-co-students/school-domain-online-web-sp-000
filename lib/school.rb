# code here!
require 'pry'

class School
  attr_accessor :school_name, :student_name, :grade
  
  ROSTER = {}
  
  def initialize(school_name)
    @school_name = school_name
  end
  
  def roster
		return ROSTER
	end
  
  def add_student (name, grade)
#		ROSTER[grade] ||= name
    if ROSTER[grade] 
      ROSTER[grade] << name
    else
      ROSTER[grade] = []
      ROSTER[grade] << name
    end
	end

	def grade(grade)
		ROSTER[grade].uniq!
	end

	def sort
		ROSTER.each do |grade, name|
		  name.sort!
		  ROSTER
    end
	end
end