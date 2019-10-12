# code here!
class School

attr_reader :roster

  def initialize(name) #school setup, used initialize bc roster can't be changed
    @name = name
    @roster = {} #roster has keys=grades, values=arrays of students
  end

  def add_student(student, grade)
    if !@roster.keys.include?(grade) #keys=grades
      @roster[grade] = []
    end
    if !@roster[grade].include?(student) #checking for student in grade
      @roster[grade] << student #putting student in grade
    end
  end 
  
  def grade(single_grade)
    return @roster[single_grade] #square brackets used for hashes
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort! #! sorting in place changes students array to be sorted
    end #without ! it will give you a brand new one, leaving the original untouched
  end
  
end
