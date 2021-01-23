# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    ros = @roster
    if !ros.has_key?(grade)
      ros[grade] = [ ]
    end

    ros[grade] << name
    ros[grade]
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each { |grade, students| @roster[grade] = students.sort }
    @roster
  end
end
