# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
    @name = name
  end

  def roster
    @roster = {}
  end

  def add_student(student_name, grade)

    if roster[grade]
      return student_name
    else
      roster[grade] << student_name
    end


  end
  #def add_student(student_name, grade)
    #roster[grade] ||= []
    #roster[grade] << student_name
#  end

  #def grade(student_grade)
  #  roster[student_grade]
#  end


end
