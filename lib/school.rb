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

  def add_student(name, grade)
    if @roster.key?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    return @roster[grade]
  end›

  def sort
    @roster.each do |grade, names|
      @roster[grade] = names.sort
    end
    return @roster
  end

end

# for each student passed in, they are added to the roster
# their name is added under the Grade, which is the second point of info
# along with their name
