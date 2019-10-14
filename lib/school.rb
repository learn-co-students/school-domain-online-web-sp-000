class School
  
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name, number)
    @roster[number] = [] if @roster[number].nil?
    @roster[number] << name
  end
  def grade(number)
    @roster[number]
  end
  def sort()
    @roster.each { |grade, students| @roster[grade] = students.sort }
    @roster
  end
end