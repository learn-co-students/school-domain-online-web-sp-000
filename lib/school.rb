class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(year)
    roster.find do |grade, student|
      if grade == year
        return student
      end
    end
  end

  def sort
    sorted = {}
    roster.each do |grade, student|
      sorted[grade] = student.sort
    end
    sorted
  end

end
