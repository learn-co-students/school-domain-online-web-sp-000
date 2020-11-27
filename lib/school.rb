# code here!

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :name, :roster

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
    roster
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, student|
      sorted[grade] = student.sort
    end
    sorted
  end

end


=begin
def sort
        @roster.map do |key, value|
        value.sort
        end
    end
def sort
   @roster.map do |key,value|
     @roster[key] = value.sort
   end
   @roster
end
=end
