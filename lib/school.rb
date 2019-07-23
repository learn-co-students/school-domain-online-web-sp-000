# code here!
class School

  attr_reader :name
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(students_name, grade)
    if roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << students_name
    else
      @roster[grade] << students_name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each {|students_name, grade| grade.sort!}
  end

end
