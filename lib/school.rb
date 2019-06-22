# code here!

class School

 attr_accessor :name, :roster
 
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student , grade)
    if @roster.key?(grade)
       @roster[grade] << student
   
    else
      @roster[grade] = [student]
    end
  end
  
  def grade(grade)
      @roster[grade]
  end

  def sort
 
    sorted_hash = {}
    final_hash = {}
      @roster.sort.map do |key,value|
      sorted_hash = {key => value.sort}
     final_hash.merge!(sorted_hash)
    end
    return final_hash
  end

end