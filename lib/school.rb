# code here!

class School
  attr_accessor :student, :grade
  attr_reader :roster

  def initialize(roster)
    roster={}
    @roster = roster
  end

  def add_student(student, grade)
     if @roster[grade]
       @roster[grade] << student
     else
     @roster[grade] = []
     @roster[grade] << student
   end
  end

def grade(grade)
  @roster[grade]
end

def sort
  new_list = {}
  @roster.sort.each do |grade, students|
    new_list[grade] = students.sort
  end
  new_list
end

end
