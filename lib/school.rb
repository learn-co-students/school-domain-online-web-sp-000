class School
  attr_accessor :roster
  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def name=(name)
    @name = name
  end

  def add_student(student_name, grade_name)
    if roster[grade_name] == nil
      roster[grade_name] = []
    end
    roster[grade_name] << student_name
  end

  def grade(grade_name)
    roster[grade_name]
  end

  def sort
    roster.each do |key, value|
      roster[key].sort!
    end
    roster
  end
end
