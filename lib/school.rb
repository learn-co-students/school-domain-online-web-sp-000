class School
  attr_reader :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade] == nil
      @roster[grade] = [student_name]
    else
      @roster[grade] << student_name
    end
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.collect {|grade, student| student.sort!}
    @roster
  end
end
