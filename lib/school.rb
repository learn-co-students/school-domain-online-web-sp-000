# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= [] # set the roster grade key equal to an empty array so we can add the students name value to it later on.
    roster[grade] << name # add the students name value to the roster grade key.
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end

end
