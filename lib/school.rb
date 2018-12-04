class School
  attr_accessor :roster
  attr_reader :name

#initialization method for the class
  def initialize(name)
    @name = name
    @roster = {}
  end

#this adds a student to the hash
  def add_student(student, grade)
    if roster.has_key?(grade)
        roster[grade] << student
    else
        roster[grade] = []
        roster[grade] << student
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each_value{|value| value.sort!}
  end

end
