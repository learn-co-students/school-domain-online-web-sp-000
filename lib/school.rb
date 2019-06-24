class School                         # School class refers to a "model" in the domain model context.
  attr_accessor = :name, :roster

  def initialize(name)
    @name = name
    @roster = {}              #@roster our hash
  end

  def add_student(name, grade)
    roster[grade] ||= {}                   #Conditional assignment operator: is equivalent to a||a=b
    roster[grade] = name
  end

  def grade(grade)
  roster[grade]
end

  # this method should arrange the students in each grade by alphabetical order
  def sort
   sorted = {}
   roster.each do |grade, students|
     sorted[grade] = students.sort          #condition which sorts our students alphabetically by the #sort method
   end
   return sorted
 end
end

school = School.new("Bayside High School")
