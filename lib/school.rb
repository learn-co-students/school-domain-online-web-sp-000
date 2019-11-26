#code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  # create the new key and point it to an empty Array
  # then push the new value into that array
  def add_student(name, point)
    if !roster.include?(point)
      roster[point] = []
      roster[point] << name
       # => {"point" => ["name"]}
    else
      roster[point] << name
    end
  end
  
  def grade(point)
    roster[point]
  end
  
  def sort
    roster.each do |point, name|
      roster[point] = name.sort
    end
    roster
  end
  
end
