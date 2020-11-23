# code here!
class School
  attr_accessor :roster, :student

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade_level)
    if @roster[grade_level]
      @roster[grade_level] << student
    else
      @roster[grade_level] = []
      @roster[grade_level] << student
    end
  end

  def grade(grade_level)
    roster.detect do |x, y|
      if x == grade_level
        return y
      end
    end
  end

  def sort
    nu_hash = {}
    roster.each do |x, y|
      nu_hash[x] = y.sort
    end
    nu_hash
  end

end
