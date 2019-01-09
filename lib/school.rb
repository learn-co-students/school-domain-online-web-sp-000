class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  def roster
    @roster
  end
  def add_student(name, grade)
    @roster[grade] = [] if roster[grade].nil?
    @roster[grade] << name
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each do |key,values|
      values.sort!
    end
    @roster
  end
end
