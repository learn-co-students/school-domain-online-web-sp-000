class School
  attr_reader :name, :roster

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << "#{name}"
    else
      @roster[grade] << "#{name}"
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |grade, students|
      @roster[grade] = students.sort
    end
    @roster
  end
end
