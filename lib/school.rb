# code here!

class School

def initialize(name)
  @name = name
  @roster = {}
end

attr_reader :name

def roster
  @roster
end


def add_student(student_name, grade)
  if @roster.key?(grade)
    puts "Grade Exists"
  else
  @roster[grade] = []
  end
  @roster[grade] << student_name
end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each do |grade, arr|
    arr.sort! do |a,b|
      a <=> b
    end
    puts "hello Longsorted"
    puts arr

  end
end


end
