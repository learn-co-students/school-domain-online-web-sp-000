require 'pry'
class School

def initialize(school_name)
  @school = school_name
end
def school
  @school
end

  # def roster=(roster)
  #   @roster = {}
  # end
  def roster
    @roster = {}
  end

def add_student (grade, student)
  @roster[grade] = []
  @roster[grade] << student
end


  def length(input)
    length = []
    @roster.each do |grade, students|
       students.each do |student|
         length << student
       end
    end
   length.length
end

end
