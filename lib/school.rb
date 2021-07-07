class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  def name
    @name
  end
  def roster
    @roster
  end
  def add_student(name,grade)
  @roster[grade] ||= []
  @roster[grade]<<name
  end
  def grade(grade)
  @roster[grade]
  end
  def sort
    sorted_students = {}
    roster.each do |grade, names|
      sorted_students[grade] = names.sort
    end
    sorted_students
  end
end
