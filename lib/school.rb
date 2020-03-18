class School
  attr_reader :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(name, grade)
    #if key already exists, shovel on to the array the key points to
    #else create the key and the name it points to
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, array| array.sort!}
  end
end
