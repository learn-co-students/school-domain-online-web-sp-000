class School
  attr_accessor :name, :roster , :student
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student,grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.sort.each do |k,v|
      sorted[k] = v.sort
    end
    sorted
  end

end
# code here!
