class School

  def initialize(school)
    @school=school
    @roster = {}
  end
  def roster
    @roster
  end
  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade]<<student_name
    else
      @roster[grade] = [student_name]
    end
    def grade(grade)
      @roster[grade]
    end
    def sort
      @roster.each do |grade, students|
        students.sort!
      end
      @roster 
    end
  end
end
