require 'pry'
class School
attr_reader :school, :roster

def initialize(school)
  @school = school
  @roster = {}
end

def add_student(student, grade)
  @roster[grade] = []
  @roster[grade] << student
  # # @roster[grade] = student
  # end
end


#   def length(input)
#     length = []
#     @roster.each do |grade, students|
#        students.each do |student|
#          length << student
#        end
#     end
#    length.length
# end

end
