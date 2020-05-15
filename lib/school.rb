# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each do |grade, kids|
      roster[grade] = kids.sort
    end
  end

end

# a = School.new("Stranahan")
# puts a.name
# a.add_student("Zaphod Beeblebrox", "fifth")
# a.add_student("Elon Musk", "fifth")
# a.add_student("Bob vila", "fifth")
# puts a.sort
# puts a.roster
