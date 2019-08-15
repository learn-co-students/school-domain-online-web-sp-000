require 'pry'
class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end


  def add_student(grade, name)
    roster[name] ||= []
    roster[name]<< grade
  end

  def grade(grade)
    roster[grade]
  end

  def sort
  #  binding.pry
    hash = {}
    roster.each do |key, values|
      roster[key] = values.sort
    end
#  hash << roster

  end

end
