# code here!
class School

attr_accessor :school, :roster, :student, :grade



def initialize(roster)
  @roster= {}
end

def add_student(student, grade)
#insert additonal values for key into an array
roster[grade] ||= []
roster[grade] << student

end

def grade(grade)
return roster[grade]
end

def sort
sorted = {}
roster.each do |grade, students|
sorted[grade] = students.sort
end
return sorted
end

end
