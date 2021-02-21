class School
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    self.roster = {}
  
  end
  
  def add_student (sname, sgrade)
    if self.roster.has_key?(sgrade) == false
      self.roster[sgrade] = [] 
    end
    self.roster[sgrade] << sname
  end
  
  def grade(g)
    return @roster[g]
  end
  
  def sort 
    @roster.each do |g, students|
      students.sort!
    end
  end
end