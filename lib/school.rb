class School
  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster=
    puts @roster
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << "#{name}"
    else
      @roster[grade] = []
      @roster[grade] << "#{name}"
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    Hash[@roster.sort.map { |a,b| [a, b.sort]}]
  end
end
