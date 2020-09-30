# # code here!
# class School
  
#   def initialize(name)
#     @name = name
#     @roster = {}
#   end

#   def roster
#     @roster
#   end
 
#   def add_student(name, grade)
#     if roster.keys.include?(grade)
#       roster[grade] << name
#     else
#       roster[grade] = []
#       roster[grade] << name
#     end
#   end
 
#   def grade(grade)
#     roster[grade]
#   end

#   def sort
#     roster.each do |key, value|
#       roster[key] = value.sort!
#     end
#   end

# end


class School
  
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  # def add_student(name, grade)
  #   if roster[grade]
  #     roster[grade] << name
  #   else
  #     roster[grade] = []
  #     roster[grade] << name
  #   end
  # end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    roster.each{|key, value| value.sort!}
  end
  
end

