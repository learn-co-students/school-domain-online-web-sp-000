
class School
  # attr_accessor :length
  attr_reader :name, :roster

  #SCHOOL_ROSTER = {}
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.include?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] = [student_name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort()
    @roster.map { |k,v| [k,v.sort] }.to_h
  end
end
