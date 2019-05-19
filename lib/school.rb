# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade) #grade is like 6th grade, 7th 8th etc
    #roster[grade] = [] unless roster[grade]
    # takes into account for empty hash
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(level)
    roster[level]
  end

  def sort
    sorted = {}
    roster.each do |name, grade|
      sorted[name] = grade.sort
    end
    sorted
  end
end
