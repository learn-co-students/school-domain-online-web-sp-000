# code here!
class School

def initialize(name)
  @name = name
  @roster = {}
end

def roster
  @roster
end

def add_student(student_name, student_grade)
  if @roster.include?(student_grade) == false
    @roster[student_grade] = []
  end
    @roster[student_grade] << student_name
end

def grade(num)
  @roster[num]
end

def sort
  @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
end

end
