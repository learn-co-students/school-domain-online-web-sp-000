# code here!
require 'pry'

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = Array.new(1, student)
    end
  end

  # Flatiron Answer:  Uses the conditional assignment operator...
  
  # def add_student(student, grade)
  #   @roster[grade] ||= []
  #   @roster[grade] << student
  # end


  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, students| students.sort!}
  end
end
