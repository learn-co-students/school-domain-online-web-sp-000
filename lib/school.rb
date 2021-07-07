class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :name, :roster

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted = @roster
    sorted.each { |grade, names|
      sorted[grade] = names.sort
    }
    sorted
  end

end
