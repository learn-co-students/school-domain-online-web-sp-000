# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if !@roster.key?(grade)
      @roster[grade] = []
    end

    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |key, students|
      students.sort!
    end
    @roster
  end
end
