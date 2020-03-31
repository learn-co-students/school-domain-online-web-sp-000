# code here!
class School
  attr_accessor :student, :grade, :roster
  attr_reader :name


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
      roster[grade] ||= []
      roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end


  def sort
    # tempArray = []
    roster.each do |grade, studentArray|
      roster[grade] = studentArray.sort
    end
  end
end
