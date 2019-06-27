class School                            #School class refers to a "model" in the domain model context.
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}                      #initialized empty hash
  end

  def add_student(student_name, grade)
    roster[grade] ||= []               #Conditional assignment operator: is equivalent to a||a=b
    roster[grade] << student_name      #Keys of grade levels, then value of each key will be an array of student names.
  end

  def grade(student_grade)                #retreives students from grade
    roster[student_grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort                             #condition which sorts our students alphabetically
    end
    return sorted
  end
end
