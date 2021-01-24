require 'pry'
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new {|h, k| h[k] = []}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    self.roster[grade] << name
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each do |grade, names|
      names.sort!
    end
  end

end
