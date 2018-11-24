class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_roster = {}

    roster.each do |grade, names|
      sorted_roster[grade] = names.sort
    end

    return sorted_roster
  end

  def add_student(student, grade)
    if roster[grade] == nil
      roster[grade] = []
      roster[grade] << student
    else
      roster[grade] << student
    end
  end
end
