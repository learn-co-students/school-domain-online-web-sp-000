# code here!
class School
  def initialize(high_school)
    @high_school = high_school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    if roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end
