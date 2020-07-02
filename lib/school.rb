# code here!
class School
  attr_accessor :roster
  attr_reader :name

  def initialize (name)
    @name=name
    @roster={}
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade]<<name
      @roster[grade]
    else
      @roster[grade]=[name]
    end
  end

  def grade (grade)
    if @roster.keys.include?(grade)
      return @roster[grade]
    end
    @roster[grade]
  end

  def sort
    @roster.each do|grade,name|
      name.sort!
    end
  end

end
