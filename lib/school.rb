class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    self.roster[grade] ||= []
    self.roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    self.roster.each do |grade, student|
      student.sort!
    end
  end
end
