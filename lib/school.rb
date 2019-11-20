# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new{ |hash, key| hash[key] = [] }
  end

  def add_student (name,grade)
     roster[grade] << name
  end

  def grade (grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, name|
      roster[grade] = name.sort
    end
  end
end
