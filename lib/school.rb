class School
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if !@roster.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    return_hash = {}
    @roster.map do |grade, students|
      return_hash[grade] = students.sort
    end
    return_hash
  end
end
