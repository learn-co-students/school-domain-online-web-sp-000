class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name,grade)
    unless self.roster.include?(grade)
      self.roster[grade] = []
    end
    self.roster[grade] << student_name
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.map do |grade, student_array|
      student_array.sort!
    end
    self.roster
  end
end
