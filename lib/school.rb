class School

def initialize(school_name)
@school_name = school_name
@roster = {} #has an empty roster when initialized
end

def roster
  @roster
end

def add_student(name, grade)
  @student_name = name #is able to add a student
  @grade = grade #is able to add multiple students to a class (grade)
  if @roster.include?(grade) == false
    @roster[grade] = [] #is able to add students to different grades
  end
  @roster[grade] << name
end

def grade(number) #is able to retreive students from a grade
  @roster[number]
end

def sort #is able to sort the students
  @roster.each do |grade, name|
    @roster[grade] = name.sort
  end
end
end

school = School.new("Bayside High School")
school.roster
school.add_student("Zach Morris", 9)
school.roster
school.grade(9)
school.sort
