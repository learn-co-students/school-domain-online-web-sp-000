# code here!

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :roster

  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade] << student
  end

def grade(grade)
  @roster[grade]
end

def sort
  #output = @roster.map {|grade, student_list| student_list.sort}
  output_array = @roster.sort
  output_hash = {}
  output_array.each do |element|
    output_hash[element[0]] = element[1].sort
  end
  output_hash
end



end
