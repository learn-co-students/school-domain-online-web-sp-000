
# code here!

class School
  def initialize (name)
    @name = name
    @roster = {}
  end
  attr_reader :roster, :grade
  def add_student (name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else

      @roster[grade] = []
      @roster[grade] <<  name
    end
  end
  def grade(grade)
    @grade = @roster[grade]
  end
  def sort
    new_roster = {}
    @roster.each do |a, b|
      new_roster[a] = b.sort
    end
      new_roster
  end
end
