# #code here!
# class School
#   attr_accessor :name, :roster

#   def initialize(name)
#     @name = name
#     @roster = {}
#   end
  
#   # create the new key and point it to an empty Array
#   # then push the new value into that array
#   def add_student(name, point)
#     if !roster.include?(point)
#       roster[point] = []
#       roster[point] << name
#       # => {"point" => ["name"]}
#     else
#       roster[point] << name
#     end
#   end
  
#   def grade(point)
#     roster[point]
#   end
  
#   def sort
#     roster.each do |point, name|
#       roster[point] = name.sort
#     end
#     roster
#   end
  
# end

class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !roster.include?(grade)
      roster[grade] = []
      roster[grade] << name
    else
      roster[grade] << name
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    roster.each do |grade, name|
      roster[grade] = name.sort
    end
    roster
  end
  
end