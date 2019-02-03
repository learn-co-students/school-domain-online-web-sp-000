class School 
  
    attr_reader :name, :roster
    
    def initialize(schoolname)
      @schoolname = schoolname
      @roster = {}
    end

    def add_student(name, grade)
      self.roster[grade] ||= []
      self.roster[grade] << name
    end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.each do |grade, student|
      student.sort!
    end
  end
  
end