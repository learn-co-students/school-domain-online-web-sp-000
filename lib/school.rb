# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(sgrade)
    roster[sgrade]
  end

  def sort
    sorted={}
    roster.each do |grades,students|
      sorted[grades] = students.sort
    end
    sorted
  end
end
