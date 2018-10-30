# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] = [] if !@roster.keys.include?(grade)
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|key, value| value.sort!}
    @roster
  end

end
