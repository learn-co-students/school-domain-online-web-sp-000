class School
  attr_reader :school

  def initialize(school)
    @school = school
    @@roster = {}
  end

  def roster
    @@roster
  end

  def roster_check(name, grade)
    if @@roster.has_key?(grade)
      @@roster[grade] << name
    else
      @@roster[grade] = []
      @@roster[grade] << name
    end
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    roster_check(@name, @grade)
  end

  def grade(grade)
    @grade = grade
    @@roster[@grade]
  end

  def sort
    @@roster.each { |key, value| value.sort! }
  end

end
