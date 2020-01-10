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
         roster[grade] << student_name
        else
    		roster[grade] = []  #set roster[grade] equal to an empty array if it doesnt already exist
          roster[grade] << student_name
      end
    end

end
  #def add_student(student_name, grade)
      #roster[grade] ||= []
      #roster[grade] << student_name
    #end

  #  def grade(student_grade)
    #  roster[student_grade]
  #  end

    #def sort
    #  sorted = {}
    #  roster.each do |grade, students|
    #    sorted[grade] = students.sort
    #  end
  #    sorted
  #  end
#  end
