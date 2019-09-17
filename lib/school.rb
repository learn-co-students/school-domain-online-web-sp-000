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
    # takes in a grade parameter and return all the students in that grade.
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name| # iterates through the roster.
      @roster[grade] = name.sort # sorts the students names in alphabetical order.
    end
  end

end
