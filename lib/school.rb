
class School

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  def school_name
    @school
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
    @add_student = @roster
  end

  def grade(grade)
    @grade = @roster.each do |grades, students|
      if grades == grade
        return students
      end
    end
    @grade
  end

  def sort
    @roster.each do |grades, value|
      value.sort!
    end
  end
end
