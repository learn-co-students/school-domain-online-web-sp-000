

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end


  def add_student(student_name, grade)
    if @roster.key?(grade)
      @roster[grade].push(student_name)
    else
      @roster[grade] = [student_name]
    end
    @roster
  end

  def grade(grade_level)
    students_in_grade = []
    @roster.each do |key, value|
      if grade_level == key
        students_in_grade = value
      end
    end
    students_in_grade.to_a
  end

  def sort
    arr = Hash.new
    @roster.each do |key, value|
      arr[key] = value.sort
    end
    @roster = arr

  end
end
