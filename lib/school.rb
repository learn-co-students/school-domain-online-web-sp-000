# code here!

class School

 attr_accessor :name, :roster
 
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student , grade)
    if @roster == {}
       @roster[grade] = [student]
   
    else
      @roster[grade] << student
    end
  end
end
