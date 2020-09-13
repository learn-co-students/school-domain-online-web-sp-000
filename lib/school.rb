# code here!

class School
  
    attr_accessor :roster
    attr_reader :name
    
    
    def initialize(name)
      @name = name
      @roster = {}
    end
    
    
    def add_student(name, grade)
      key_array = @roster.keys
      if key_array.any? { |i| i == grade}
        @roster[grade].push(name)
      else 
        @roster[grade] = []
        @roster[grade].push(name)
      end
      @roster
    end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    temp_roster = {} 
    temp_roster = @roster.sort_by { |grade, names| [grade, names] }
    temp_roster.each do |x|
      x[1] = x[1].sort
    end
    @roster = temp_roster.to_h
  end
  
end