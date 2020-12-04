require 'pry'

class School
  attr_accessor :roster, :student, :grade
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    #create a new array equal to the incoming new key
    #currently resets the grade to an empty array

    if @roster.include?(grade)
        @roster[grade] << student

    else
      #push the new value to the newly made key array
        @roster[grade] = []
        @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value { |v| v.sort! }
  end
end

#add_student
  #adds student to roster
    #grade => ["student"]
    #want grade to be the key because multiple students belong to grade

#grade
  #retrieves students from a grade
    #hash[] == grade

#sort
  #sorts hash by a parameter
