class School
  attr_accessor :roster, :name, :grade

  def initialize(new_student)
    @roster = {}    
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
    @roster[grade] = []
    @roster[grade] << name
    end
  end

  def grade(grade)
    # students = []
    # @roster.each do |student_grade, name|
    #   student_grade == grade ? students << name : nil
    # end
    # students.flatten
    @roster[grade]
  end

  def sort
    students = []
    @roster.each do |student_grade, name|
      sorted_name = name.sort
      puts sorted_name
      @roster[student_grade] = sorted_name
    end
    @roster
  end

end

school = School.new("Bayside High")
school.add_student("Zach Morris", 9)
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster