class School
 attr_accessor :name, :roster


def initialize(name)
  @name = name
  @roster = {}
end

def grade(student_grade)
  roster[student_grade]
end

def add_student(student, grade)
  if roster.include?(grade)
    roster[grade] << student
  else
     roster[grade] = []
     roster[grade] << student
   end
end

def sort
  roster.each do |grade, student|
    roster[grade] = student.sort!
end
roster
end

end
