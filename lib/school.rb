# code here!

class School
  
  attr_accessor :school_name, :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new
  end
  
  def add_student(student, year)
    roster[year] ||= []
    roster[year] << student
  end 
  
  def grade(year)
    roster.fetch(year) if roster.has_key?(year)
  end 
  
  def sort 
    roster.sort_by.map {|k, v| [k, v.sort]}.to_h
  end 
  
end 

