class School

  attr_reader :name, :roster

  def initialize(name, roster={})
    @name = name
    @roster = roster
  end


  def add_student(name, grade)
    # name = School.new(name, {grade =>[name] })
    if @roster[grade] != nil
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end
