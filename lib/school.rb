class School
  attr_accessor :name, :student, :grade, :roster



  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster.each do |x, y|
      if x == grade
        return y
      end
    end
end

  def sort
    grades = {}
    roster.each do |x, y|
      grades[x] = y.sort
    end
    grades
  end

end
