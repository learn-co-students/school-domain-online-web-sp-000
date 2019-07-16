class School
  attr_accessor :name, :roster
  attr_reader :grade
  
  
  
  def initialize(name)
    @name = name
    @roster = roster
    @roster = {}
  end
  
  #define the roster method to make sure it doesn't point to nil
  def roster
    @roster
  end
  
  def add_student(name,grade)
    @roster = roster
    @grade = grade

      if 
        #the has_key? method ask if the hash has the passed key
        @roster.has_key?(@grade)
        @roster[@grade] << name
      else
        @roster[@grade] = [name]
      end
    
  end
   
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.sort
    @roster.each {|key,value| @roster[key] = value.sort}
  end
  
end