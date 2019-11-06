# code here!

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster.detect do |x,y|
      if x == grade
        return y
      end
    end
  end

  def sort
    sorted = {}
    roster.each do |x,y|
      sorted[x] = y.sort
    end
    sorted
  end
end
