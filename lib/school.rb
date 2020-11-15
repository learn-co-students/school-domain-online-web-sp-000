# code here!
class School
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.include?(grade) == false
    @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade (grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, arr|
      @roster[grade] = arr.sort
    end
  end
end
