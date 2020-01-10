class School

  ROSTER = {}

  def initialize(name)
    @name = name
  end

  def roster
    @roster = ROSTER
  end

  def add_student(name, grade)
    if ROSTER.key?(grade)
        ROSTER[grade] << name
      else
        ROSTER[grade] = [name]
      end
  end

end
