require 'pry'

class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name=name
    @roster={}
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster.fetch(grade)
  end
  
  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end
end