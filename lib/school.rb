class School
  attr_accessor :roster, :name
  
  def initialize(name)
    @name = name
    @roster = Hash.new { |h, k| h[k] = [] }
  end
  
  def add_student(name, grade)
    @roster[grade] << name
  end
  
  def grade(number)
    @roster[number]
  end
  
  def sort
    sorted = {}
    @roster.map do |grade, list|
      sorted[grade] = list.sort
    end
    sorted
  end
end