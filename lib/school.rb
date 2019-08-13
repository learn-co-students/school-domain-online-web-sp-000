# code here!
class School
  def initialize (school)
    @school = school
    @roster = {}
  end
  
  def add_student(student, grade)
    @student = student
    @grade = grade
    if @roster.has_key?(@grade) == true
      @roster[@grade] << @student
    else 
      @roster[@grade] = []
      @roster[@grade] << @student
    end
  end
  
  def roster
    @roster
  end
  
  def grade(grade)
    @grade = grade
    @roster[@grade]
  end
  
  def sort
    @sorted_roster = {}
    @roster.map do |grade, students|
      @sorted_roster[grade] = students.sort
      end
    @sorted_roster
  end
end

school = School.new("Bayside High School")
puts school.roster
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.add_student("Doogie Hauster", 10)
puts school.roster
puts school.grade(9)
puts school.sort



