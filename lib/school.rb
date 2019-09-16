class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @roster.map {|grade, name| @roster[grade] = name.sort}
    @roster
  end

end
