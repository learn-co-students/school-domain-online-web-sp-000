# code here!
class School
attr_accessor :name, :roster
ROSTER = {}
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster.detect do |g, s|
      if g == grade
      return s
      end
    end
  end

  def sort
    new_hash = {}
    roster.each do |g, s|
      new_hash[g] = s.sort
    end
    new_hash
  end
end
