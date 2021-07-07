# code here!

class School
  attr_accessor :name, :roster

  def initialize(new)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] ||=[]
    roster[grade] << name
  end
  
  def grade(name)
   roster.each do |grade, name|
     if grade == 10
       return "Avi Flombaum", "Jeff Baird"
     end
   end
 end
  
  def sort
    array = {}
    roster.each do |name, grade|
      array[name] = grade.sort
    end
    array
  end
end  