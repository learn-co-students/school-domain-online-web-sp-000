class School
  attr_accessor :roster
  
  def initialize(name)
    @roster = Hash.new
  end
  
  def add_student(name, grade)
  
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    
    @roster[grade] << name
  end
  
    def grade(grade)
      @roster[grade]
    end
    
    def sort
      @roster.each do |grade, name|
        @roster[grade] = name.sort
      end
    end
end