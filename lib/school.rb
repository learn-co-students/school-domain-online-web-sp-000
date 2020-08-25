class School

  attr_reader :name, :roster
  
  def initialize(name)
    @name= name
    @roster= {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []       # THIS IS THE DOUBLE PIPE EQUALS...notice the similarities to += and -=
    @roster[grade] << name
  end

  # def add_student(name, grade)
  #   if @roster[grade] == nil
  #     @roster[grade] = []
  #     @roster[grade] << name
  #   else
  #     @roster[grade] << name
  #   end
  # end

  def grade(num)
    @roster[num]
  end
  
  def sort
    roster_sorted = {}
    @roster.each do |grade, name|
      roster_sorted[grade] = name.sort
    end
    roster_sorted
  end

end
