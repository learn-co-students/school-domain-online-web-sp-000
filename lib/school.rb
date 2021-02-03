# code here!
class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade].nil?
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    @roster.each{|key, value| value.sort!}
  end
end
