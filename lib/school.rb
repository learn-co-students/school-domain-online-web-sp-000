class School

  def initialize(school_name)  #we initialize a school with its name here
    @school_name = school_name  #we set our instance variable to school_name
    @roster = {}  # we set an empty hash to store our roster
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @student_name = name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end

end
