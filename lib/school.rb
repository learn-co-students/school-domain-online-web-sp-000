# code here!

class School
  attr_reader :name, :roster
  
  def initialize(schoolName)
    @name = schoolName
    @roster = {}
  end

  def add_student (student, grade)
    @roster[grade] = [] unless @roster.include?(grade)
    @roster[grade].push(student)
  end
    
  def grade(grade)
    @roster[grade]
  end
    
  def sort
    @roster.each do |i, j|
      @roster[i] = j.sort
    end
  end
end

school = School.new("Bayside High School")

school.add_student("Zach Morris", 9)
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)

print school.sort

