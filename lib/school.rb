class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name 
    @roster = {}
  end
  def roster
    @roster
  end
  def add_student(name, grade)
    @roster[grade] ||= [] 
    @roster[grade] << name 
  end
  def grade(number)
    @roster[number]
  end
  def sort 
    @roster.each {|grade, name| name.sort!}
  end
end
