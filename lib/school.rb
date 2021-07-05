# code here!
class School
  attr_accessor :roster, :school
  def initialize(name)
    @school = name
    @roster = {}
  end
  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  def grade(g)
    return @roster[g]
  end
  def sort
    @roster.each_key do |x|
      @roster[x].sort!
    end
    return @roster
  end
end
