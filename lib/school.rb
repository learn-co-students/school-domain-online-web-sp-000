# code here!
require 'pry'
class School
  attr_accessor :name, :roster 
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(student, grade)
    if !(@roster.key?(grade))
      @roster[grade] = []
    end 
    @roster[grade] << student 
  end 
  
  def grade(num)
    @roster[num]
  end 

  def sort 
    @roster.each do |grade, student_array|
     @roster[grade] = student_array.sort
    end 
  end 
end 


school = School.new("Bayside High School")
school.add_student("Adam", 9)
school.add_student("Tracy", 9)
school.add_student("Danielle", 9)
puts school.grade(9)
school.sort
puts school.grade(9)