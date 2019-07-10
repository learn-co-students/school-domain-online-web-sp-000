# code Here
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.has_key?(grade)
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
  		sorted = {}
  			@roster.each do |key, value|
  			  sorted[key] = value.sort!
  			end
  		sorted
  	end

end
