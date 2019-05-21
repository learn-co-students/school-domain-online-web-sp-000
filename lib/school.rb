# code here!
class School
attr_accessor :name, :roster

def initialize(name)
  @name
  @roster = {}
end

def add_student(student_name,grade)
  roster[grade] ||= []
  roster[grade] << student_name
end

def grade(student_grade)
  sorted = {}
  roster.each do |grade, students|
    sorted[grade] = student.sort
end
sorted
end

end
