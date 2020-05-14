# code here!
class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade] || @roster[grade] = []
      @roster[grade] << student_name
    else
      @roster[grade] << student_name
    end
  end

  def grade(num)
    @roster.each do |x, y|
      if x == num
        return y
      end
    end
  end

  def sort
    new_hash = {}
    @roster.each do |x, y|
      new_hash[x] = y.sort
    end
    new_hash
  end


end
