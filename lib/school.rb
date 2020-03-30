class School
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  # add a student to the grade's list
  def add_student(student_name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  # return the array of all students
  # that are in the given grade
  def grade(grade)
    @roster[grade]
  end

  # alphabetically sort students in each grade
  def sort
    return_hash = {}
    @roster.each  {|grade, students| return_hash[grade] = students.sort}
    return_hash
  end

end
