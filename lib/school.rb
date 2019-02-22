class School

  attr_accessor :roster, :name, :grade

  def initialize(name)
    @name = name
    @roster = Hash.new{ |hash,key| hash[key] = [] } # intiatilizing an emtpty array with a default empty hash
  end

  def add_student(name, grade)
      @roster[grade] << name
    end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

end
