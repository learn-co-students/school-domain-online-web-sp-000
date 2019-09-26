# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = Hash.new { |name,year| name[year] = []}
  end

  def add_student(name, year)
    @roster[year] << name
  end

  def grade(year)
    @roster[year]
  end

  def sort
    @roster.each do |key, value|
         value.sort!
    end
  end



end
