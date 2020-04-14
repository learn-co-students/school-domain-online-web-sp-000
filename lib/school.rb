# code here!
class School

  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}

  end
  def add_student(student,grade)
    if !roster.include?(grade)
      @roster[grade] = []
      @roster[grade] << student
    else
      @roster[grade] << student
    end
  end

  def grade(num)
    roster[num]
  end

  def sort
    roster.each do |grade, student|
      student.sort!{|a,b| a<=>b}
      end
    end
  end
