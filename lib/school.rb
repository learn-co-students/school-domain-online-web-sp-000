require 'pry'
class School

  def initialize(school)
    @school = school
    @roster = {}
  end

  def school
    @school
    @roster
  end

  def add_student=(name, grade)
    @name = name
    @grade = grade
    @roster[:"#{grade}"] = []
    @roster[:"#{grade}"] << name
  end

  def add_student
    @roster
  end

  def grade
  end

end
